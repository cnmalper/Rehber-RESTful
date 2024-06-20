//
//  HomeViewModel.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 19.06.2024.
//

import Foundation
import RxSwift

class HomeViewModel {
    
    var rRepo = RehberDaoRepository()
    var rehberListesi = BehaviorSubject<[Rehber]>(value: [Rehber]())
    
    init() {
        rehberListesi = rRepo.rehberListesi
        rehberYukle()
    }
    
    func sil(kisi_id: Int) {
        rRepo.sil(kisi_id: kisi_id)
    }
    
    func rehberYukle() {
        rRepo.rehberYukle()
    }
}
