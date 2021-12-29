//
//  Soot3VC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 25/05/1443 AH.
//
//

import Foundation
import UIKit

class sootVC3: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var sootlable3: UILabel!
    @IBOutlet var table3: UITableView!
    
    var songs2 = [Song3]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        self.sootlable3.layer.cornerRadius = 20
        view.backgroundColor = UIColor(named: "Color")
        configureSongs()
        table3.delegate = self
        table3.dataSource = self
    }
    
    
         func configureSongs() {
             songs2.append(Song3(name:" سورة الفاتحة",
                               albumName:"الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00001"))
             songs2.append(Song3(name: "سورة البقره" ,
                               albumName: " الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00002"))
             songs2.append(Song3(name: "سورة آل عمران",
                               albumName:  "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00003"))
             songs2.append(Song3(name: " سورة النساء ",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00004"))
             songs2.append(Song3(name: "سورةالمائدة",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00005"))
             
             songs2.append(Song3(name: "سورة الانعام",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00006"))
             songs2.append(Song3(name: "سورة الاعراف",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00007"))
             songs2.append(Song3(name: "سورة الانفال",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00008"))
             
             songs2.append(Song3(name: "سورة التوبة ",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00009"))
             songs2.append(Song3(name: "سورة يونس ",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00010"))
             songs2.append(Song3(name: "سورة هود",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00011"))
             songs2.append(Song3(name: "سورة يوسف ",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00012"))
             songs2.append(Song3(name: "سورة الرعد",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00013"))
             songs2.append(Song3(name: "سورة إبراهيم",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00014"))

             songs2.append(Song3(name: "سورة الحجر",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00015"))

             songs2.append(Song3(name: "سورة النحل",
                               albumName: "الشيخ ماهر المعيقلي",
                               artistName: "تشغيل",
                               imageName: "",
                               trackName: "00016"))

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
        guard let vc = storyboard?.instantiateViewController(identifier: "player3") as? PlayerViewController3 else {
            return
        }
        vc.songs = songs2
        vc.position = position
        present(vc, animated: true)
    }
    
    
}

