//
//  ViewController.swift
//  LifeCycleTest
//
//  Created by fuji3zpg on 2019/02/08.
//  Copyright © 2019 hoge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(type(of: self)): \(#function)")

        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.setTitle("ボタン", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(clickButton), for: .touchDown)
        view.addSubview(button)
    }

    @objc func clickButton() {
        print("clickButton")
        view.setNeedsLayout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("\(type(of: self)): \(#function)")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(type(of: self)): \(#function)")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(type(of: self)): \(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("\(type(of: self)): \(#function)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("\(type(of: self)): \(#function)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("\(type(of: self)): \(#function)")
    }
}
