//
//  ViewController.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 18.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var rehberListesi = [Rehber]()
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        _ = viewModel.rehberListesi.subscribe(onNext: { liste in
            self.rehberListesi = liste
            self.tableView.reloadData()
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.rehberYukle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detay" {
            if let kisi = sender as? Rehber {
                let gidilecekVC = segue.destination as! DetailViewController
                gidilecekVC.kisi = kisi
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rehberListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = rehberListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = kisi.kisi_ad
        cell.numberLabel.text = kisi.kisi_tel
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = rehberListesi[indexPath.row]
        performSegue(withIdentifier: "detay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

