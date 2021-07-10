//
//  MainViewModel.swift
//  Spinae
//
//  Created by Yoshihiro Tanaka on 7/10/21.
//

import SwiftUI
import SystemExtensions

class MainViewModel: NSObject, ObservableObject {

  func onStartTapped() {

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
