//
//  LoadResourcePresentationAdapter.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/15/26.
//

import EssentialFeed
import EssentialFeediOS


@MainActor
final class LoadResourcePresentationAdapter<Resource, View: ResourceView> {
    private let loader: () async throws -> Resource
    private var cancellable: Task<Void, Never>?
    private var isLoading = false

    var presenter: LoadResourcePresenter<Resource, View>?

    init(loader: @escaping () async throws -> Resource) {
        self.loader = loader
    }

    func loadResource() {
        guard !isLoading else { return }

        presenter?.didStartLoading()
        isLoading = true

        if #available(iOS 26.0, *) {
            cancellable = Task.immediate { @MainActor [weak self] in
                defer { self?.isLoading = false }
                
                do {
                    if let resource = try await self?.loader() {
                        if Task.isCancelled { return }

                        self?.presenter?.didFinishLoading(with: resource)
                    }
                } catch {
                    if Task.isCancelled { return }

                    self?.presenter?.didFinishLoading(with: error)
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }

    deinit {
        cancellable?.cancel()
    }
}

extension LoadResourcePresentationAdapter: FeedImageCellControllerDelegate {
    func didRequestImage() {
        loadResource()
    }

    func didCancelImageRequest() {
        cancellable?.cancel()
        cancellable = nil
        isLoading = false
    }
}
