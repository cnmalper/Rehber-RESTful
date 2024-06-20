//
//  RehberAddViewModel.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 19.06.2024.
//

import Foundation

class RehberAddViewModel {
    
    var rRepo = RehberDaoRepository()
    
    func kaydet(kisi_ad: String, kisi_tel: String) {
        rRepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
