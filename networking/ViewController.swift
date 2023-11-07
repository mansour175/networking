//
//  ViewController.swift
//  networking
//
//  Created by abdallah mansour on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiRouter.shared.ApiLogIn { x, error in
            print(x?.data?.user?.countryCode)
        }
        borders()

    }
    
    func borders () {
        
        view1.layer.borderWidth = 0.9
        view1.layer.borderColor = UIColor(named: "border")?.cgColor
        view1.layer.cornerRadius = 10

        
    }


}

