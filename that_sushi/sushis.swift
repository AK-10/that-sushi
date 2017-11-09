//
//  sushis.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/17.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import Foundation
import RealmSwift

class Sushi: Object{
    dynamic var id = 0
    dynamic var name: String = ""
    dynamic var confirmed: Bool = false
    dynamic var resultName: String = ""
    dynamic var detailName: String = ""
    dynamic var scientificName: String = ""
    dynamic var explanation: String = ""
    
//    dynamic var icon: NSData? = nil
    
    func primaryKey() -> String? {
        return "id"
    }
 
    convenience init(_ identifier: Int, _ fishName: String, _ sName: String, _ resName: String, _ detName: String, _ ex: String) {
        self.init()
        self.id = identifier
        self.name = fishName
        self.confirmed = false
        self.resultName = resName
        self.detailName = detName
        self.scientificName = sName
        self.explanation = ex
    }
    
    func predicted() {
//        self.confirmed = true
        let realm = try! Realm()
        try! realm.write {
            self.confirmed = true
        }
    }
    

    class func restore() -> [Sushi] {
        let realm = try! Realm()
        var sushis: [Sushi] = []
        for s in realm.objects(Sushi.self) {
            sushis.append(s)
        }
        return sushis
    }
    
    class func getSushiFromLabel(label: String) -> Sushi{
        let realm = try! Realm()
        return realm.objects(Sushi.self).filter("resultName == %@", label)[0]
    }
}
