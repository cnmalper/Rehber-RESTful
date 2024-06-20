//
//  DetailViewController.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 18.06.2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameDetailTF: UITextField!
    @IBOutlet weak var phoneDetailTF: UITextField!
    
    var kisi: Rehber?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            nameDetailTF.text = k.kisi_ad
            phoneDetailTF.text = k.kisi_tel
        }
    }
    @IBAction func updatebuttonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
