//
//  MainVC.swift
//  AhmedSoloApp
//
//  Created by Ahmed Assiri on 23/04/1443 AH.
//
//


import UIKit



struct Item {
    let name : String
    let price1 : String
    let logo : UIImage?
    let spe : String
}

var importing : Array<Item> = []
var cart : Array<Item> = []
var purchsedPr : Array<Item> = []


var List : Array<Item> = [
    Item(
        name: "",
        price1 : "",
        logo: UIImage(named: "9"),
        spe : " "
    ),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "10"),
    spe : ""
),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "12"),
    spe : ""
),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "11"),
    spe : " "

),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "13"),
    spe : " "

),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "14"),
    
    spe : " "

),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "15"),
    spe : ""

),
Item(
    name: "",
    price1 : "",
    logo: UIImage(named: "16"),
    spe :" "

),
]



import UIKit

class VC1: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
   
    var searchba: Array<Item> = List
    
    @IBOutlet weak var saerchbar: UISearchBar!
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchba = List
        }
        else{
            searchba = List.filter({oneofprod in
                return oneofprod.name.starts(with: searchText)
            })
        }
        picC.reloadData()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchba.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestCell", for: indexPath
        ) as! Cell1
        
        let item = searchba[indexPath.row]
        cell.setup(Item: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenwidth = view.bounds.size.width
        //return CGSize(width: 100, height: 100)
        return CGSize(width: screenwidth / 2, height: screenwidth / 2 )    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let prouduct = searchba[indexPath.row]
        performSegue(withIdentifier: "show", sender:prouduct
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let v2 = segue.destination as! VC2
        v2.selectedpro = sender as? Item
    }

    @IBOutlet weak var picC: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        searchba = List
        picC.reloadData()
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // picsflowlayot.itemSize = CGSize (width: 100, height: 100)
        
        
        //    picC.collectionViewLayout
        saerchbar.delegate = self
        picC.delegate = self
        picC.dataSource = self
        // Do any additional setup after loading the view.
    }
   
}

import UIKit

class Cell1 : UICollectionViewCell {
    
    
    @IBOutlet weak var logop: UIImageView!
    @IBOutlet weak var lName: UILabel!
    @IBOutlet weak var price1: UILabel!
    
    func setup(Item : Item){
        logop.image = Item.logo
        lName.text = Item.name
       // price1.text = "\(Item.price1)"
    }
}



import UIKit

class VC2 : UIViewController {
    
    var selectedpro : Item?
    
    @IBOutlet weak var labels: UILabel!
    @IBOutlet weak var price2: UILabel!
    @IBOutlet weak var Name2: UILabel!
    @IBOutlet weak var Image1: UIImageView!
    
    
    @IBAction func addtocart(_ sender: Any) {
        cart.append(selectedpro!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if selectedpro != nil{
            Name2.text = selectedpro?.name
           // price2.text = selectedpro?.price1
           labels.text = selectedpro?.spe
            Image1.image = selectedpro!.logo
            
        }
    }
    
}



import UIKit

class VC3 : UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var cartTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTV.delegate = self
        cartTV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        cartTV.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath
        ) as! Cell3
        
        let product = cart[indexPath.row]
        cell.setup(Item: product)
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(
            style: .destructive,
            title: "Delete") { _, _, _ in
                cart.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
}


import UIKit

class Cell3 : UITableViewCell{
    
    @IBOutlet weak var imgc: UIImageView!
    @IBOutlet weak var pricec: UILabel!
    @IBOutlet weak var namec: UILabel!
    
    func setup(Item : Item){
    namec.text = Item.name
    imgc.image = Item.logo
    pricec.text = "\(Item.price1)"
    }
}
