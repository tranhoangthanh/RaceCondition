//
//  ViewController.swift
//  RaceCondition
//
//  Created by TranHoangThanh on 1/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    let conQueue = DispatchQueue(label: "conQueue", qos: .background, attributes: .concurrent)
    let queue = DispatchQueue(label: "serialQueue")
    override func viewDidLoad() {
        super.viewDidLoad()
        //testRaceCodition()
    //    testRaceCodition_barrier()
        testSerial()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func testSerial() {
        var count = 0
        for _ in 1...5 {
            queue.async {
                for _ in 1...20000 {
                    count += 1
                    print(count)
                }
            }
        }
    }
    
    func testRaceCodition() {
        var count = 0
        for _ in 1...5 {
            conQueue.async {
                for _ in 1...20000 {
                    count += 1
                    print(count)
                }
            }
        }
    }

    
    func testRaceCodition_barrier() {
        var count = 0
        for _ in 1...5 {
            conQueue.async(flags: .barrier) {
                for _ in 1...20000 {
                    count += 1
                    print(count)
                }
            }
        }
    }

}




class Widget {
  private func privateMethod() { }
   func fileprivateMethod() {  }
}

