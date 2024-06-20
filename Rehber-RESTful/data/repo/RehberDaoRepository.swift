//
//  RehberDaoRepository.swift
//  Rehber-RESTful
//
//  Created by Alper Canımoğlu on 19.06.2024.
//

import Foundation
import RxSwift

class RehberDaoRepository {
    
    var rehberListesi = BehaviorSubject<[Rehber]>(value: [Rehber]())
    
    func kaydet(kisi_ad: String, kisi_tel: String) {
        print("\(kisi_ad) -> \(kisi_tel) kaydedildi.")
    }
    
    func sil(kisi_id: Int) {
        print("\(kisi_id) silindi.")
    }
    
    func guncelle(kisi_ad: String, kisi_tel: String) {
        print("\(kisi_ad) -> \(kisi_tel) guncellendi.")
    }
    
    func rehberYukle() {
        
        var liste = [Rehber]()
        
        let k1 = Rehber(kisi_ad: "Alper", kisi_tel: "1111")
        let k2 = Rehber(kisi_ad: "Arda", kisi_tel: "2222")
        let k3 = Rehber(kisi_ad: "Akin", kisi_tel: "3333")
        let k4 = Rehber(kisi_ad: "Aynil", kisi_tel: "4444")
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        liste.append(k4)
        rehberListesi.onNext(liste)
    }
}
