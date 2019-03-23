//
//  trsd.swift
//  clashRoyaleIntro
//
//  Created by 陸顥壬 on 2019/3/22.
//  Copyright © 2019 陸顥壬. All rights reserved.
//

import UIKit
class MyViewController: UIViewController, UIPopoverPresentationControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        let popoverCtrl = segue.destination.popoverPresentationController
        print("sdfsdfsdf")
        if sender is UIButton {
//            popoverCtrl?.sourceRect = (sender as! UIButton).bounds
             popoverCtrl?.sourceRect =
           (sender as! UIButton).frame
        }
        popoverCtrl?.delegate = self
    }
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
   
}
