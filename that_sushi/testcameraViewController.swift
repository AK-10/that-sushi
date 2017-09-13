//
//  testcameraViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/10.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit

class testcameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var picture = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tocamera(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        
        present(picker, animated: true, completion: nil)
    }

    @IBAction func toLibrary(_ sender: Any) {
        let sb: UIStoryboard = self.storyboard!
        let nextView = sb.instantiateViewController(withIdentifier: "libraryVC")
        present(nextView, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(#function)
        //print(info[UIImagePickerControllerMediaType]!)
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.picture = pickedImage
        }
        let sb: UIStoryboard = self.storyboard!
        let nextView = sb.instantiateViewController(withIdentifier: "resultVC")
        present(nextView, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print(#function)
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
