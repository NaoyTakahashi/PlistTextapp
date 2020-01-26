//
//  ViewController.swift
//  PlistTextapp
//
//  Created by 高橋直也 on 2020/01/26.
//  Copyright © 2020 高橋直也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var prop: mondai?
    func hoge() {
        //mondai.plist
        if let url = Bundle.main.path(forResource: "mondai", ofType: "plist") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: url))
                self.prop = try PropertyListDecoder().decode(mondai.self, from: data)
            } catch let e {
                print("Reason: \(e)")
            }
        }
    }
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hoge()
        //print(prop)
    }
    
    
    

}

