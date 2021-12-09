//
//  YoutubePlayer.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 04/05/1443 AH.
//

import Foundation

import UIKit
import youtube_ios_player_helper
import SideMenu

class VoluntaryOpportunitiesViewController: UIViewController, YTPlayerViewDelegate {
    @IBOutlet weak var playtwo: YTPlayerView!
    @IBOutlet weak var playerVedio: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Color")
        
        playerVedio.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        playerVedio.delegate = self
        
        playtwo.load(withVideoId: "1tT-IlDd1bE", playerVars: ["playsinline": "1"])
        playtwo.delegate = self
    }
}
