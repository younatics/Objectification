//
//  ViewController.swift
//  ObjectificationDemo
//
//  Created by YiSeungyoun on 2017. 4. 23..
//  Copyright © 2017년 SeungyounYi. All rights reserved.
//

import UIKit
import Objectification

class YNDropDownMenu {
    var title = "YNDropDownMenu"
    var starCount = 512
    var description = "Awesome Dropdown menu for iOS with Swift 3"
    var version = "2.3.0"
    var url = "https://github.com/younatics/YNDropDownMenu"
}

class YNSearch {
    var title = "YNSearch"
    var starCount = 271
    var description = "Awesome fully customize search view like Pinterest written in Swift 3"
    var version = "0.3.1"
    var url = "https://github.com/younatics/YNSearch"
}

class YNExpandableCell {
    var title = "YNExpandableCell"
    var starCount = 191
    var description = "Awesome expandable, collapsible tableview cell for iOS written in Swift 3"
    var version = "1.1.0"
    var url = "https://github.com/younatics/YNExpandableCell"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data1 = YNDropDownMenu()
        let data2 = YNSearch()
        let data3 = YNExpandableCell()
        
        let datas = [data1, data2, data3] as [Any]
        
        let objectification = Objectification(objects: datas, type: .all)
        print(objectification.objects(contain: "Awesome"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

