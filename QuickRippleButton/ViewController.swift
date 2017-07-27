//
//  ViewController.swift
//  QuickRippleButton
//
//  Created by Abhishek on 27/07/17.
//  Copyright © 2017 iosinfo. All rights reserved.
//

import UIKit
import QuickRippleButton

class ViewController: UIViewController {

    @IBOutlet weak var sampleButton: QuickRippleButton!
    
    
    
    let messages = [1, 2, 3, 4, 5, 6, 7, 8]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleButton.tintColor = Constants.redColor
      
        navigationController?.navigationBar.barTintColor = Constants.redColor
        
        let topRightButton = QuickRippleButton(frame: CGRect(x: 0.0, y: 0.0, width: 30.0, height: 30.0))
        topRightButton.setImage(UIImage(named: "search_img"), for: UIControlState.normal)
        topRightButton.initalSizeFactor = 0.5
        topRightButton.duration = 0.3
        let rightNavButtonItem = UIBarButtonItem(customView: topRightButton)
        navigationItem.rightBarButtonItem = rightNavButtonItem
        
        
    }
    
    
    @IBAction func addFolder(_ sender: Any) {
        
        let alert = UIAlertController(title: "Create Folder ", message: "Enter your Folder Name .", preferredStyle: .alert)
        alert.addTextField() { textField in
        }
        
//        alert.addTextField() { textField in
//        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { action in
        })
        
//        alert.addAction(UIAlertAction(title: "Default", style: .default) { action in
//        })
//        
//        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive) { action in
//        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
        })
        
        self.present(alert, animated: true, completion: nil)
    }

    
    }

    

//extension ViewController: UITableViewDelegate {}
