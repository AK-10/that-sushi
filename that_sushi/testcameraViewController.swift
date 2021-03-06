//
//  testcameraViewController.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/10.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit
import CoreML
import Vision
import ImageIO

class testcameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, CameraEvent {
    
    @IBOutlet weak var cameraButton: UIButton!
    var inputImage: CIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cameraButton.addTarget(self, action: #selector(tocamera), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tocamera() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        
        present(imagePicker, animated: true, completion: nil)
    }

    @IBAction func toLibrary(_ sender: Any) {
        let sb: UIStoryboard = self.storyboard!
        let nextView = sb.instantiateViewController(withIdentifier: "libraryVC")
        present(nextView, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(#function)
        //print(info[UIImagePickerControllerMediaType]!)
//        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
//        }
        let sb: UIStoryboard = self.storyboard!
        let nextView = sb.instantiateViewController(withIdentifier: "resultVC") as! resultViewController
        //nextView.takePicture = {
            //self.tocamera()
        //}
        nextView.cameraEvent = self
        picker.dismiss(animated: false, completion:{
            guard let uiImage = info[UIImagePickerControllerOriginalImage] as? UIImage
                else { fatalError("no image from image picker") }
            guard let ciImage = CIImage(image: uiImage)
                else { fatalError("can't create CIImage from UIImage") }
            let orientation = CGImagePropertyOrientation(rawValue: UInt32(uiImage.imageOrientation.rawValue))
            self.inputImage = ciImage.applyingOrientation(Int32(orientation!.rawValue))
            
            //リクエストハンドラの作成。ここでカメラで撮影した画像を渡します。
            if #available(iOS 11.0, *) {
                let handler = VNImageRequestHandler(ciImage: self.inputImage)
                do {
                    try handler.perform([self.classificationRequest_sushi])
                } catch {
                    print(error)
                }
            } else {
                // Fallback on earlier versions
            }
        })
        present(nextView, animated: true, completion: nil)
    }
    
    @available(iOS 11.0, *)
    lazy var classificationRequest_sushi: VNCoreMLRequest = {
        do {
            var model: VNCoreMLModel? = nil
            model = try! VNCoreMLModel(for: sushimodel().model)
            return VNCoreMLRequest(model: model!, completionHandler: self.handleClassification)
        }
//        catch {
//            fatalError("can't load Vision ML model: \(error)")
//        }
    }()
    
    @available(iOS 11.0, *)
    func handleClassification(request: VNRequest, error: Error?) {
        guard let observations = request.results as? [VNClassificationObservation]
            else { fatalError("unexpected result type from VNCoreMLRequest") }
        guard let best = observations.first
            else { fatalError("can't get best result") }
        
        DispatchQueue.main.async {
            let classification: String = (best.identifier);
//            let sb: UIStoryboard = self.storyboard!
//            let nextVC = sb.instantiateViewController(withIdentifier: "resultVC")
            let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
            delegate.resName = classification
//            nextVC.resultNameLabel.text = classification
//            self.resultLabel.text = "Classification: \"\(classification)\" Confidence: \(best.confidence)"
        }
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
