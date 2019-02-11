//
//  TableViewController.swift
//  LifeCycleTest
//
//  Created by fuji3zpg on 2019/02/11.
//  Copyright © 2019 hoge. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(type(of: self)): \(#function)")

        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let label = UILabel()
        label.text = "ラベル"
        label.frame = CGRect(x: 10, y: 0, width: 100, height: 50)
        cell.contentView.addSubview(label)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
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
