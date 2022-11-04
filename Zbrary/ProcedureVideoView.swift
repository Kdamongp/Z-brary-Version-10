//
//  ProcedureVideoView.swift
//  Zbrary
//
//  Created by Kyle Damon on 11/4/22.
//

import SwiftUI
import AVKit

struct ProcedureVideoView: View {
    var videoFilename: String
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoFilename, withExtension: "MOV")!))
    }
}

struct ProcedureVideoView_Previews: PreviewProvider {
    static var previews: some View {
        ProcedureVideoView(videoFilename: "")
    }
}
