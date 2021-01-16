//
//  ViewController.swift
//  a211Push
//
//  Created by 申潤五 on 2021/1/9.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for theView in view.subviews{
            if theView.isKind(of: UITextField.classForCoder()){
                print("yes")
            }
        }
        
        
        
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        NotificationCenter.default.addObserver(self, selector: #selector(shouldRotateObject(_:)), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc func shouldRotateObject(_ sender:Any?){
        print("test")
    }
    
    
    
}

