//
//  ViewController.swift
//  RandomTaco
//
//  Created by Annie Tung on 12/1/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        APIRequestManager.manager.fetchRandomTaco()
        
        //APIRequestManager.manager.getData()
        
    }



}

