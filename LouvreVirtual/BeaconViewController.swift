//
//  BeaconViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 14/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import UIKit

class BeaconViewController: UIViewController {

    var ble: BLE!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ble = BLE()
    }

}
