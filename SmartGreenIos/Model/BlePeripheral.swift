//
//  BlePeripheral.swift
//  Basic Chat MVC
//
//  Created by kenza graoudi on 07/04/2021.
//

import Foundation
import CoreBluetooth

class BlePeripheral {
 static var connectedPeripheral: CBPeripheral?
 static var connectedService: CBService?
 static var connectedTXChar: CBCharacteristic?
 static var connectedRXChar: CBCharacteristic?
}
