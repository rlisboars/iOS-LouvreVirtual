//
//  BLE.swift
//  LouvreVirtual
//
//  Created by Swift on 14/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import Foundation
import CoreLocation
import CoreBluetooth

class BLE: NSObject, CLLocationManagerDelegate, CBPeripheralManagerDelegate {
    
    private let uuid = UUID(uuidString: "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6")
    private let identifier = "myBeacon"
    private let major: CLBeaconMajorValue = 1
    private let minor: CLBeaconMinorValue = 1
    private var region: CLBeaconRegion!
    private lazy var locationManager = CLLocationManager()
    private var peripheralManager: CBPeripheralManager!
    private var advertisementData = NSDictionary()
    
    
    override init() {
        super.init()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        region = CLBeaconRegion(proximityUUID: uuid!, major: major, minor: minor, identifier: identifier)
        
        peripheralManager = CBPeripheralManager(delegate: self, queue: nil)
        
    }
    
    //MARK: - CBPeripheralManagerDelegate
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch peripheral.state {
        case .poweredOn:
            print("Bluetooth está ligado")
            advertisementData = region.peripheralData(withMeasuredPower: -76)
            peripheralManager.startAdvertising(advertisementData as? [String:Any])
        case .poweredOff:
            print("Bluetooth está desligado!!")
            peripheralManager.stopAdvertising()
        case .resetting:
            print("A conexão com o Bluetooth foi perdida temporariamente.")
        case .unauthorized:
            print("Usuário não autorizou o uso do bluetooth.")
        case .unsupported:
            print("Celular não suporta bluetooth low energy.")
        case .unknown:
            print("Só Deus sabe.")
        }
    }
    
    func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?) {
        print("Começou a fazer o advertising.")
    }
}
