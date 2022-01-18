//
//  ViewController.swift
//  RaceCondition
//
//  Created by TranHoangThanh on 1/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    let conQueue = DispatchQueue(label: "conQueue", qos: .background, attributes: .concurrent)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        testRaceCodition()
        // Do any additional setup after loading the view.
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


}

