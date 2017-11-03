//
//  libraryViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/11.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit
import RealmSwift

class libraryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var sushiCollection: UICollectionView!
    var selectedItem: sushi?
    var Items: [sushi] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sushiCollection.dataSource = self
        sushiCollection.delegate = self
        sushiCollection.backgroundColor = UIColor.clear
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Items = Array(sushi.restore())
    }
    
    @IBAction func backHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell
        
        if Items[indexPath.row].confirmed {
            cell.sushiName.text? = Items[indexPath.row].name
            cell.sushiImage.image = UIImage(named: Items[indexPath.row].resultName)
        } else {
            cell.sushiName.text? = "?  ?  ?"
            cell.sushiImage.image = UIImage(named: "syari")
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedItem = Items[indexPath.row]
        if selectedItem.confirmed {
            performSegue(withIdentifier: "toDetailfromresult", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailfromLibrary") {
            let nextVC: detailViewController = segue.destination as! detailViewController
            nextVC.receivedItem = selectedItem!
            nextVC.parentID = self.restorationIdentifier!
        }
    }
}

class customCell: UICollectionViewCell{
    
    @IBOutlet weak var sushiName: UILabel!
    @IBOutlet weak var sushiImage: UIImageView!
    
}
