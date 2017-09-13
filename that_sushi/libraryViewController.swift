//
//  libraryViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/11.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit

class libraryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var sushiCollection: UICollectionView!
    
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
        cell.num.text = "1"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
}

class customCell: UICollectionViewCell{
    
    @IBOutlet weak var num: UILabel!
}
