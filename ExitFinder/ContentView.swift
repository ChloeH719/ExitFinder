//
//  ContentView.swift
//  ExitFinder
//
//  Created by 黄云婕 on 20/10/2022.
//

import SwiftUI
//import DynamsoftCameraEnhancer

struct ContentView: View {
    @ObservedObject private var cameraManager = CameraManager(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    
    var body: some View {
        VStack (alignment: .center){
            
            ZStack(alignment: .center) {
                //use camera
                CameraView(cameraManager: cameraManager)
            }
            
            VStack (alignment: .center) {
                Text("Exit Finder")
                    .font(.title)
                    .foregroundColor(.green)
                Text("Emergency Exit Recognition")
                    .font(.subheadline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
