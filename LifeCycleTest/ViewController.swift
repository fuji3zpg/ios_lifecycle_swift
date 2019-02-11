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
    private var buttonTableVC = UIButton()

    private var autolayoutButton = UIButton()
    private var autolayoutButton2 = UIButton()
    private var autolayoutButtonBottomConstraint: NSLayoutConstraint?
    private var autolayoutButtonBottomConstraint2: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(type(of: self)): \(#function)")

        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.setTitle("ボタン", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(clickButton), for: .touchDown)
        view.addSubview(button)

        buttonTableVC.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        buttonTableVC.setTitle("テーブルビュー", for: .normal)
        buttonTableVC.backgroundColor = UIColor.gray
        buttonTableVC.addTarget(self, action: #selector(callTableVC), for: .touchDown)
        view.addSubview(buttonTableVC)

        // 最初にautolayoutButtonをviwに追加
        autolayoutButton.setTitle("AutoLayout", for: .normal)
        autolayoutButton.backgroundColor = UIColor.red
        autolayoutButton.addTarget(self, action: #selector(changeAutoLayout), for: .touchDown)
        view.addSubview(autolayoutButton)
        // 制約を追加
        autolayoutButton.translatesAutoresizingMaskIntoConstraints = false
        autolayoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        autolayoutButton.topAnchor.constraint(equalTo: view.topAnchor, constant: buttonTableVC.frame.origin.y + 100).isActive = true
        print("buttonTableVC.frame.origin.y=\(buttonTableVC.frame.origin.y)")
        autolayoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        autolayoutButtonBottomConstraint = autolayoutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400)
        autolayoutButtonBottomConstraint?.isActive = true

        // 最初にautolayoutButton2をviwに追加
        autolayoutButton2.setTitle("AutoLayout2", for: .normal)
        autolayoutButton2.backgroundColor = UIColor.red
        autolayoutButton2.addTarget(self, action: #selector(changeAutoLayout2), for: .touchDown)
        view.addSubview(autolayoutButton2)
        // 制約を追加
        autolayoutButton2.translatesAutoresizingMaskIntoConstraints = false
        autolayoutButton2.leadingAnchor.constraint(equalTo: autolayoutButton.leadingAnchor, constant: 0).isActive = true
        autolayoutButton2.topAnchor.constraint(equalTo: autolayoutButton.bottomAnchor, constant: 50).isActive = true
        autolayoutButton2.trailingAnchor.constraint(equalTo: autolayoutButton.trailingAnchor, constant: 0).isActive = true
        autolayoutButtonBottomConstraint2 = autolayoutButton2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        autolayoutButtonBottomConstraint2?.isActive = true
    }

    @objc func clickButton() {
        print("clickButton")
        view.setNeedsLayout()
    }

    @objc func callTableVC() {
        print("buttonTableVC")
        present(TableViewController(), animated: true, completion: nil)
    }

    @objc func changeAutoLayout() {
        print("autolayoutButton")
        // 制約を更新
        if let constraint = autolayoutButtonBottomConstraint {
            constraint.constant = constraint.constant + 100
        }
    }

    @objc func changeAutoLayout2() {
        print("autolayoutButton2")
        // 制約を更新
        if let constraint = autolayoutButtonBottomConstraint2 {
            constraint.constant = constraint.constant + 100
        }
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
