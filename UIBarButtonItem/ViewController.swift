//
//  ViewController.swift
//  UIBarButtonItem
//
//  Created by Artem Karmaz on 1/8/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 20))
        iv.contentMode = .scaleAspectFit
        let img = UIImage(named: "apple.png")
        iv.image = img
        self.navigationItem.titleView = iv
        
        // add button on right bar
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(add(param:)))
        let items = ["up", "down", "top"]
        let segmentController = UISegmentedControl(items: items)
        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector(segmentControllerTapped(param:)), for: .valueChanged)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segmentController)
        
        let simpleSwitcher = UISwitch()
        simpleSwitcher.isOn = true
        simpleSwitcher.addTarget(self, action: #selector(switchIsChange(param:)), for: .valueChanged)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitcher)
        
        
    }
    
    @objc func add(param: UIBarButtonItem) {
        print("add")
    }
    
    @objc func switchIsChange(param: UISwitch) {
        if param.isOn {
            print("Is os")
        } else {
            print("Is off")
        }
    }
    
    @objc func segmentControllerTapped(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("up")
        case 1:
            print("down")
        case 2:
            print("top")
        default: ()
        }
    }
}

