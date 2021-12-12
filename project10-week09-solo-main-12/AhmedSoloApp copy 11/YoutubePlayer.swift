//
//  YoutubePlayer.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 04/05/1443 AH.
//
/*
import UIKit

class gestureVC : UIViewController {
    
    let imageview = UIImageView()
     let pinchggesture = UIPinchGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageview.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        imageview.image = #imageLiteral(resourceName: "youtube")
        imageview.isUserInteractionEnabled = true
        self.view.addSubview(imageview)
        
        imageview.center = view.center
        imageview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        imageview.addGestureRecognizer(pinchggesture)
        pinchggesture.addTarget(self, action: #selector(pinchaction))
    }
    
    
    @objc func pinchaction() {
        
        guard let gestureview = pinchggesture.view else {
            return
        }
        
        gestureview.transform = gestureview.transform.scaledBy(x: pinchggesture.scale, y: pinchggesture.scale)
        pinchggesture.scale = 1
    }
    
}
        
   */

import UIKit

class gestureVC : UIViewController {

    
@IBOutlet var rotationgesture: UIRotationGestureRecognizer!

override func viewDidLoad() {
 super.viewDidLoad()
 
   
}
@IBAction func rotation(_ sender: Any) {
 guard let gestureview = rotationgesture.view else{
return
}
gestureview.transform = gestureview.transform.rotated(by: rotationgesture.rotation)
rotationgesture.rotation = 0

}
}






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
