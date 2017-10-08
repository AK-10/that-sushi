//
//  sushis.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/17.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import Foundation
import RealmSwift

class sushi: Object{
    dynamic var id = 0
    dynamic var name: String = ""
    dynamic var confirmed: Bool = false
    dynamic var resultName: String = ""
    dynamic var detailName: String = ""
//    dynamic var icon: NSData? = nil
    
    func primaryKey() -> String? {
        return "id"
    }
 
    convenience init(_ _id: Int, _ _name: String, _ _res: String, _ _det: String) {
        self.init()
        self.id = _id
        self.name = _name
        self.confirmed = false
        self.resultName = _res
        self.detailName = _det
    }
    
    func predicted() {
//        self.confirmed = true
        let realm = try! Realm()
        do {
            try! realm.write {
                self.confirmed = true
            }
        } catch {
            print("some error happened")
        }
    }
    

    class func restore() -> Results<sushi> {
        let realm = try! Realm()
        return realm.objects(sushi.self)
    }
}
