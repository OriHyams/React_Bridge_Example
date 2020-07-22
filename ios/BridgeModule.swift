//
//  BridgeModule.swift
//  bridgeexample
//
//  Created by Ori Hyams on 21/07/2020.
//

import Foundation
import UIKit


@objc(BridgeModule)
class BridgeModule: RCTViewManager {
  
  @objc override static func requiresMainQueueSetup() -> Bool {
     return true
  }
  
  override func view() -> UIView! {
      let button = UIButton.init(type: UIButton.ButtonType.system)
      button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
      button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
      button.setTitle("This is native button", for: .normal)
      return button
  }
  
  @objc func onOpenScreenButtonPressed(_ node:NSNumber) {
    DispatchQueue.main.async {
      let vc: NativeExampleViewController = NativeExampleViewController(nibName: "NativeExampleViewController", bundle: nil)
      vc.modalPresentationStyle = .fullScreen
      UIApplication.shared.delegate?.window??.rootViewController?.present(vc, animated: true, completion: nil)
    }
  }

}
