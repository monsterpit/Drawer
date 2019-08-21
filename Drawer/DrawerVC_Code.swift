//
//  DrawerVC_Code.swift
//  Drawer
//
//  Created by MyGlamm on 8/21/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

import UIKit

class DrawerVC_Code: UIViewController {

    var drawerView : UIView?
    
    var schema : String? = "araic"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupMainView()

        setupDrawerView()
        
    }
    
    
    func setupMainView(){
       
        view.backgroundColor = #colorLiteral(red: 0.006285691624, green: 0.006285691624, blue: 0.006285691624, alpha: 0.5)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapOnMainView(_:)))
        
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc
    func handleTapOnMainView(_ sender : UITapGestureRecognizer){
        print("main view tapped")
    }
    
    
    func setupDrawerView(){
        
       // view.addSubview(createDrawerView())
        
        createDrawerView()
        
    }
    

    

    func createDrawerView() {
        
        drawerView = UIView()
        
        drawerView!.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapOnDrawerView(_:)))
        
        drawerView!.addGestureRecognizer(tapGesture)
        
        
        view.addSubview(drawerView!)
        
        drawerView!.translatesAutoresizingMaskIntoConstraints = false
        
        if schema! == "arabic"{
            
        NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 0).isActive = true
            
            
        NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0).isActive = true
            
        NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0).isActive = true
            
        NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.7, constant: 0).isActive = true
            
        }
        else{
            
            NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 0).isActive = true
            
            
            NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0).isActive = true
            
            NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0).isActive = true
            
            NSLayoutConstraint(item: drawerView!, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.7, constant: 0).isActive = true
            
            
        }
    
    }
    
    
    @objc
    func handleTapOnDrawerView(_ sender : UITapGestureRecognizer){
        print("main drawer tapped")
    }

}
