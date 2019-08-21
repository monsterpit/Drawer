//
//  ViewController.swift
//  Drawer
//
//  Created by MyGlamm on 8/21/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var drawerVC : DrawerVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedBtn(_ sender: UIButton) {
       // setupDrawer()
        
       // setupDrawerUsingWindow()
        
        setupDrawerVC_Code()
    }
    
 
    
    func setupDrawer(){
        
        drawerVC = DrawerVC(nibName: "DrawerVC", bundle: nil)
        
        
       self.addChild(drawerVC!)
        
        self.view.addSubview(drawerVC!.view)
        
        drawerVC?.view.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 400)
        
        drawerVC?.view.clipsToBounds = true
        
        
    }
    
    
    func setupDrawerUsingWindow(){
        
        guard let keyWindow = UIApplication.shared.keyWindow else{return}
        
        drawerVC = DrawerVC(nibName: "DrawerVC", bundle: nil)
        
        keyWindow.addSubview(drawerVC!.view)
        
    }
    
    func setupDrawerVC_Code(){
        
        let drawer = DrawerVC_Code()
        
        self.addChild(drawer)
        
        self.view.addSubview(drawer.view)
        
//        drawerVC?.view.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 400)
//        
//        drawerVC?.view.clipsToBounds = true
        
        
    }
    
}



