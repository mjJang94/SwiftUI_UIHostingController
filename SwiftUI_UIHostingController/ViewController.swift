//
//  ViewController.swift
//  SwiftUI_UIHostingController
//
//  Created by 장민종 on 2020/05/20.
//  Copyright © 2020 장민종. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftUIController = UIHostingController(rootView: SwiftUIView(text: "Integration Three"))
        
        addChild(swiftUIController)
        swiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(swiftUIController.view)
        
        swiftUIController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        swiftUIController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        swiftUIController.didMove(toParent: self)
    }


    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        
        return UIHostingController(coder: coder,
            rootView: SwiftUIView(text:"Integration One"))
    }

    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text:"Integration Two"))
    }
}
