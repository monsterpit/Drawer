//
//  DrawerVC.swift
//  Drawer
//
//  Created by MyGlamm on 8/21/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

import UIKit

protocol DrawerVCDelegate : class{
    func buttonPressed()->()
}


class DrawerVC: UIViewController {

    weak var drawerVCDelegate : DrawerVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var whiteView: UIView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        buttonPressed()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension DrawerVC : DrawerVCDelegate{
    func buttonPressed() {
        print("Button Pressed")
        //self.removeFromParent()
        
        
        UIView.animate(withDuration: 0.5, animations: {
            [unowned self] in
            
            self.view.alpha = 0
            self.whiteView.frame = CGRect(x: 0, y: self.view.frame.height, width: self.whiteView.frame.width, height: self.whiteView.frame.height)
            
        }) { (bool) in
            self.view.removeFromSuperview()
        }
        
    }
    
    
}
