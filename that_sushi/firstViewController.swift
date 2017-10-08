//
//  ViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/07.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

//    @IBOutlet weak var subView: UIView!
    override func loadView() {
        super.loadView()
        self.setNeedsStatusBarAppearanceUpdate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.setNeedsStatusBarAppearanceUpdate()
        // Do any additional setup after loading the view, typically from a nib.
//        subView.layer.borderColor = UIColor.white as? CGColor
//        subView.layer.borderWidth = 5
//        subView.layer.cornerRadius = 20
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let sb: UIStoryboard = self.storyboard!
        let nextView = sb.instantiateViewController(withIdentifier: "homeVC")
        nextView.modalTransitionStyle = .flipHorizontal
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.present(nextView, animated: true, completion: nil)
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

}

