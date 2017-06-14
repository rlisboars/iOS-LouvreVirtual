//
//  RadarViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 13/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import UIKit

class RadarViewController: UIViewController {


    @IBOutlet weak var ivTour: RoundedImage!
    @IBOutlet weak var vWelcome: UIView!
    @IBOutlet weak var vRadar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vRadar.isHidden = true
    }
    
    @IBAction func switched(_ sender: UISwitch) {
        vWelcome.isHidden = sender.isOn
        vRadar.isHidden = !sender.isOn
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
