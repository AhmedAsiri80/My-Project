//
//  YoutubePlayer.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 04/05/1443 AH.
//

import UIKit
import youtube_ios_player_helper
import SideMenu


class Youtube0 : UIViewController , YTPlayerViewDelegate {
    
    @IBOutlet weak var U1: YTPlayerView!
    @IBOutlet weak var U2: YTPlayerView!
    @IBOutlet weak var U3: YTPlayerView!
    @IBOutlet weak var U4: YTPlayerView!
    @IBOutlet weak var U5: YTPlayerView!
    @IBOutlet weak var U6: YTPlayerView!
    
    override func viewDidLoad() {
     super.viewDidLoad()
        
    
        U1.load(withVideoId: "1tT-IlDd1bE", playerVars: ["playsinline": "1"])
        U1.delegate = self

            U2.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
            U2.delegate = self
        U2.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        U2.delegate = self
        U2.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        U2.delegate = self
        U2.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        U2.delegate = self
        U2.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        U2.delegate = self


    
}
}
