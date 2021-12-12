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
    //@IBOutlet weak var playerVedio: YTPlayerView!
    @IBOutlet weak var playerVedio3: YTPlayerView!
    @IBOutlet weak var pageControll: UIPageControl!
   // @IBOutlet weak var playerVedio4: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Color")
        
//        playerVedio.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
//        playerVedio.delegate = self
//
        playtwo.load(withVideoId: "1tT-IlDd1bE", playerVars: ["playsinline": "1"])
        playtwo.delegate = self
        
        playerVedio3.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
        playerVedio3.delegate = self
        
        
//        playerVedio4.load(withVideoId: "g1WJI9O6fyA", playerVars: ["playsinline": "1"])
//        playerVedio.delegate = self
    }
}

import UIKit

class PageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}

