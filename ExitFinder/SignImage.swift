//
//  SignImage.swift
//  ExitFinder
//
//  Created by 黄云婕 on 23/10/2022.
//

import SwiftUI

struct SignImage: View {
    var body: some View {
        Image("Sign")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 4)
    }
}

struct SignImage_Previews: PreviewProvider {
    static var previews: some View {
        SignImage()
    }
}
