//
//  ViewController.swift
//  TestLocalized
//
//  Created by Polo Teh on 28/04/2019.
//  Copyright © 2019 Polo Teh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = localisess.Outlet_Label
        // Do any additional setup after loading the view, typically from a nib.
    }


}

