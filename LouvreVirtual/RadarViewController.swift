//
//  RadarViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 13/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import UIKit
import CoreLocation


class RadarViewController: UIViewController {


    //MARK: - IBOutlets
    @IBOutlet weak var ivTour: RoundedImage!
    @IBOutlet weak var ivRadar: UIImageView!
    @IBOutlet weak var vWelcome: UIView!
    @IBOutlet weak var vRadar: UIView!
    
    //MARK: - Properties
    private lazy var locationManager = CLLocationManager()
    private let uuid = UUID(uuidString: "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6")
    private var region: CLBeaconRegion!
    private let artworks = [
        1: Artworks.monalisa,
        2: Artworks.venusmilo,
        4: Artworks.balsaMedusa,
        5: Artworks.virgemmenino
    ]
    fileprivate var artShown = false
    private var animating = false
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        vRadar.isHidden = true
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        region = CLBeaconRegion(proximityUUID: uuid!, identifier: "Louvre")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        artShown = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let major = sender as? Int else { return }
        let vc = segue.destination as! ArtViewController
        vc.art = artworks[major]
        
    }
    
    //MARK: - Methods
    private func runRadar() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.fillMode = kCAFillModeForwards
        rotationAnimation.isRemovedOnCompletion = false
        rotationAnimation.byValue = Float(Double.pi * 2.0)
        rotationAnimation.duration = 2.5
        rotationAnimation.repeatCount = Float.infinity
        ivRadar.layer.add(rotationAnimation, forKey: nil)
    }
    
    private func stopRadar() {
        ivRadar.layer.removeAllAnimations()
    }
    
    //MARK: - IBActions
    @IBAction func turnRadarOnOff(_ sender: UISwitch, forEvent event: UIEvent) {
        vRadar.isHidden = !sender.isOn
        vWelcome.isHidden = sender.isOn
        if sender.isOn {
            runRadar()
            locationManager.startMonitoring(for: region)
            locationManager.startRangingBeacons(in: region)
        } else {
            stopRadar()
            locationManager.stopMonitoring(for: region)
            locationManager.stopRangingBeacons(in: region)
        }
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

//MARK: - CLLocationManagerDelegate
extension RadarViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("Acabamos de entrar em uma região")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("Saí de uma região")
    }
    
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        print("Encontrei \(beacons.count) iBeacons")
        for beacon in beacons {
            print("Major:", beacon.major, "Proximity:", beacon.proximity.rawValue, "Accuracy:", beacon.accuracy)
        }
        if !artShown {
            guard let beacon = beacons.first else { return }
            let major = Int(beacon.major)
            if beacon.proximity == .immediate && beacon.accuracy <= 0.1 {
                artShown = true
                performSegue(withIdentifier: "artSegue", sender: major)
            }
            
        }
    }
    
}
