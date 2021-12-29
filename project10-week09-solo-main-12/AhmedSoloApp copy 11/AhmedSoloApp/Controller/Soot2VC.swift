//
//  Soot2VC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 23/05/1443 AH.
//
//
//  ViewController.swift
//  soot22
//
//  Created by Ahmed Assiri on 23/05/1443 AH.
//
//
//  Play2CC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 23/05/1443 AH.
//
//
//  Soot2VC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 23/05/1443 AH.
//


//
//  Soot.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 23/04/1443 AH.
//

import Foundation

import UIKit

class sootVC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var sootlable2: UILabel!
    @IBOutlet var table2: UITableView!
    
    var songs2 = [Song2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        self.sootlable2.layer.cornerRadius = 20
        view.backgroundColor = UIColor(named: "Color")
        configureSongs()
        table2.delegate = self
        table2.dataSource = self
    }
    
   
        func configureSongs() {
            songs2.append(Song2(name:" سورة الفاتحة",
                              albumName:"الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0001"))
            songs2.append(Song2(name: "سورة البقره" ,
                              albumName: " الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0002"))
            songs2.append(Song2(name: "سورة آل عمران",
                              albumName:  "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0003"))
            songs2.append(Song2(name: " سورة النساء ",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0004"))
            songs2.append(Song2(name: "سورةالمائدة",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0005"))
            
            songs2.append(Song2(name: "سورة الانعام",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0006"))
            songs2.append(Song2(name: "سورة الاعراف",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0007"))
            songs2.append(Song2(name: "سورة الانفال",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0008"))
            
            songs2.append(Song2(name: "سورة التوبة ",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0009"))
            songs2.append(Song2(name: "سورة يونس ",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0010"))
            songs2.append(Song2(name: "سورة هود",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0011"))
            songs2.append(Song2(name: "سورة يوسف ",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0012"))
            songs2.append(Song2(name: "سورة الرعد",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0013"))
            songs2.append(Song2(name: "سورة إبراهيم",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0014"))

            songs2.append(Song2(name: "سورة الحجر",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0015"))

            songs2.append(Song2(name: "سورة النحل",
                              albumName: "الشيخ ماهر المعيقلي",
                              artistName: "تشغيل",
                              imageName: "",
                              trackName: "0016"))

        }
        
    
    // Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath)
        let song = songs2[indexPath.row]
        // configure
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.accessoryType = .disclosureIndicator
        cell.imageView?.image = UIImage(named: song.imageName)
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 17)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // present the player
        let position = indexPath.row
        guard let vc = storyboard?.instantiateViewController(identifier: "player2") as? PlayerViewController2 else {
            return
        }
        vc.songs = songs2
        vc.position = position
        present(vc, animated: true)
    }
    
    
}
