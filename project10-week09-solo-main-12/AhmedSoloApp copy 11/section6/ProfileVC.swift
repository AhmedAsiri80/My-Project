//
//  ProfileVC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 05/05/1443 AH.
//


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var collectionView: PagingCollectionVIew!
    
    let imageArray = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initCollectionView()
    }
}


extension ViewController {
    
    func initCollectionView() {
        collectionView.scrollInterval = 2
        collectionView.startScrolling()
        pageControll.numberOfPages = imageArray.count
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let currentPage: Int = Int(scrollView.contentOffset.x / collectionView.bounds.size.width)
        pageControll.currentPage = currentPage
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PageCell999
        cell.imageView.image = UIImage(named: imageArray[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: self.collectionView.frame.size.width, height: self.collectionView.frame.size.height)
    }
    
}

import UIKit

class PageCell999: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}


import UIKit

class PagingCollectionVIew: UICollectionView {
    
    private var timer = Timer()
    var scrollInterval: Int = 2

    override func awakeFromNib() {
        super.awakeFromNib()
        self.isPagingEnabled = true
    }
    
    func startScrolling() {
        if !timer.isValid {
            if self.numberOfItems(inSection: 0) != 0 {
                
                setTimer()
            }
        }
    }
    
    deinit { stopTimer() }
    
    func stopTimer() {
        
        if timer.isValid {
            self.timer.invalidate()
            
        }
    }
    
    fileprivate func setTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: TimeInterval(scrollInterval), target: self, selector: #selector(self.autoScrollImageSlider), userInfo: nil, repeats: true)
        RunLoop.main.add(self.timer, forMode: .common)
    }
    
    @objc fileprivate func autoScrollImageSlider() {
        DispatchQueue.main.async {
            let firstIndex = 0
            let lastIndex = self.numberOfItems(inSection: 0) - 1
            let visibleCellsIndexes = self.indexPathsForVisibleItems.sorted()
            
            if !visibleCellsIndexes.isEmpty {
                let nextIndex = visibleCellsIndexes[0].row + 1
                let nextIndexPath: IndexPath = IndexPath.init(item: nextIndex, section: 0)
                let firstIndexPath: IndexPath = IndexPath.init(item: firstIndex, section: 0)
                
                (nextIndex > lastIndex) ? (self.scrollToItem(at: firstIndexPath, at: .centeredHorizontally, animated: true)) : (self.scrollToItem(at: nextIndexPath, at: .centeredHorizontally, animated: true))
            }
        }
    }
  
}
//
//
//
//
//import Foundation
//import UIKit
//
//
//class WebVC : UIViewController {
//    
//   
//    @IBAction func webadd(_ sender: UIButton) {
//        
//        UIApplication.shared.open(URL(string: "https://ehsan.sa/?utm_source=GOOGLE&utm_medium=SEARCH&utm_campaign=ONGOING")! as URL, options: [:], completionHandler: nil)
//        
//    }
//    
//  
//    @IBAction func webadd2(_ sender: UIButton) {
//        UIApplication.shared.open(URL(string: "https://www.joodeskan.sa")! as URL, options: [:], completionHandler: nil)
//    }
//
//    
//}
