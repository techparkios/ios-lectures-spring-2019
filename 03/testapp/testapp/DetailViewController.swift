//
//  DetailViewController.swift
//  testapp
//
//  Created by d.taraev on 13/03/2019.
//  Copyright © 2019 mail.ru. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var item = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("[viewControllers]: \(navigationController?.viewControllers)")
        textLabel.text = item
        
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}
