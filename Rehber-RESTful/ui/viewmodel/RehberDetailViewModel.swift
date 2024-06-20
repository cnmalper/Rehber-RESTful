//
//  RehberDetailViewModel.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 19.06.2024.
//

import Foundation

class RehberDetailViewModel {
    
    var rRepo = RehberDaoRepository()
    
    func guncelle(kisi_ad: String, kisi_tel: String) {
        rRepo.guncelle(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
