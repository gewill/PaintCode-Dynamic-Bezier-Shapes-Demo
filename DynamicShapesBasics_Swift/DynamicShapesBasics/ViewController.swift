//
//  ViewController.swift
//  DynamicShapesBasics
//
//  Created by Matej Dunik on 05/01/15.
//  Copyright (c) 2015 company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var b: ButtonView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white

        b = ButtonView(frame: CGRect(x: 100, y: 100, width: 38 * 4, height: 44 * 4))
        b.image = UIImage(named: "bg")
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.bClicked))
        b.addGestureRecognizer(tap)
        b.isUserInteractionEnabled = true
        self.view.addSubview(b)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bClicked() {
        print(#function)
        b.isHighlighted = !b.isHighlighted
    }

}

