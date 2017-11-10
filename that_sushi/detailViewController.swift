//
//  detailViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/16.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var scientificName: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailText: UITextView!
    
    var receivedItem: Sushi?
    var parentID: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backButton.addTarget(self, action: #selector(backView), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        name.text = receivedItem!.name
        scientificName.text = receivedItem!.scientificName
        detailImage.image = UIImage(named: receivedItem!.detailName)
        let texts = receivedItem?.explanation.components(separatedBy: "@")
        detailText.text.removeAll()
        for str in texts! {
            detailText.text.append(str + "\n")
        }
        if parentID == "libraryVC"{
            backButton.setBackgroundImage(#imageLiteral(resourceName: "back2home_btn"), for: .normal)
        } else if parentID == "resultVC" {
            backButton.setBackgroundImage(#imageLiteral(resourceName: "back_predicted"), for: .normal)
        }
    }
    
    func backView() {
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

}
