//
//  CameraView.swift
//  ExitFinder
//
//  Created by 黄云婕 on 24/10/2022.
//
import Foundation
import SwiftUI
import DynamsoftCameraEnhancer
   
struct CameraView: UIViewRepresentable {
    var cameraManager: CameraManager
    func makeUIView(context: Context) -> DCECameraView {
        let dceView = cameraManager.getCameraView()
        return dceView
    }
   
    func updateUIView(_ uiView: DCECameraView, context: Context) {
           
    }
}
