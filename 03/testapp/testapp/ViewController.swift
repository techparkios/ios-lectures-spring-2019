//
//  ViewController.swift
//  testapp
//
//  Created by d.taraev on 13/03/2019.
//  Copyright © 2019 mail.ru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "qwerty" {
            if let vc = segue.destination as? DetailViewController {
                vc.item = "BlaBlaBla"
            }
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        guard let destinationVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        
        destinationVC.item = "BlaBlaBla"
        
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}

