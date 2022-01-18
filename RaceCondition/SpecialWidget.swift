//
//  SpecialWidget.swift
//  RaceCondition
//
//  Created by TranHoangThanh on 1/18/22.
//

import Foundation

// Widget.swift
class SpecialWidget: Widget {
  func start() {
  //  privateMethod()      // No access to private method
    fileprivateMethod()  // fileprivate access allowed
  }
}
