//
//  MainViewModel.swift
//  Spinae
//
//  Created by Yoshihiro Tanaka on 7/10/21.
//

import SwiftUI
import SystemExtensions

class MainViewModel: NSObject, ObservableObject {
  private lazy var extensionBundle: Bundle = {
    let url = URL(
      fileURLWithPath: "Contents/Library/SystemExtensions", relativeTo: Bundle.main.bundleURL)
    // TODO: Error handling
    let urls = try! FileManager.default.contentsOfDirectory(
      at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
    return Bundle(url: urls.first!)!
  }()

  func onStartTapped() {
    guard let id = extensionBundle.bundleIdentifier else {
      return
    }
    let request = OSSystemExtensionRequest.activationRequest(
      forExtensionWithIdentifier: id, queue: .main)
    request.delegate = self
    OSSystemExtensionManager.shared.submitRequest(request)
  }

}

extension MainViewModel: OSSystemExtensionRequestDelegate {
  func request(
    _ request: OSSystemExtensionRequest,
    actionForReplacingExtension existing: OSSystemExtensionProperties,
    withExtension ext: OSSystemExtensionProperties
  ) -> OSSystemExtensionRequest.ReplacementAction {
    return .replace
  }

  func requestNeedsUserApproval(_ request: OSSystemExtensionRequest) {

  }

  func request(
    _ request: OSSystemExtensionRequest, didFinishWithResult result: OSSystemExtensionRequest.Result
  ) {

  }

  func request(_ request: OSSystemExtensionRequest, didFailWithError error: Error) {

  }
}
