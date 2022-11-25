//
//  CameraManager.swift
//  ExitFinder
//
//  Created by 黄云婕 on 24/10/2022.
//

import Foundation
import UIKit
import DynamsoftCameraEnhancer
   
class CameraManager: NSObject, ObservableObject, DCEFrameListener {

    private var dce: DynamsoftCameraEnhancer! = nil
    private var dceView: DCECameraView! = nil
       
    init(frame: CGRect) {
        super.init()
        configureDCE(frame: frame)
    }
       
    func configureDCE(frame: CGRect) {
      dceView = DCECameraView.init(frame: frame)
      dce = DynamsoftCameraEnhancer.init(view: dceView)
      dce.open()
      dce.setFrameRate(30)
        dce.addListener(self)
    }
       
    func getCameraView() -> DCECameraView {
        return dceView
    }
       
    func frameOutPutCallback(_ frame: DCEFrame, timeStamp: TimeInterval) {

    }
}

