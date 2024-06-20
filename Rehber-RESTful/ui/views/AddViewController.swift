//
//  AddViewController.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 18.06.2024.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    var viewModel = RehberAddViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let kName = nameTF.text, let kPhone = phoneTF.text {
            viewModel.kaydet(kisi_ad: kName, kisi_tel: kPhone)
        }
        navigationController?.popViewController(animated: true)
    }
}
