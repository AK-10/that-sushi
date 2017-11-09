//
//  AppDelegate.swift
//  that_sushi
//
//  Created by Atsushi KONISHI on 2017/09/07.
//  Copyright © 2017年 小西篤志. All rights reserved.
//

import UIKit
import RealmSwift
import CSV

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var resName: String?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // realmのpath
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        //migration
        realmMigration()
//        print(self.csvToArray(fileName: "sushis", type: "csv"))
        
        let userDefault = UserDefaults.standard
        let dict = ["firstLaunch": true]
        userDefault.register(defaults: dict)
        
        if userDefault.bool(forKey: "firstLaunch") {
            userDefault.set(false, forKey: "firstLaunch")
            let realm = try! Realm()

            let Arrays = csvArrayToData(array: csvToArray(fileName: "sushis", type: "csv"))
            for data in Arrays {
                try! realm.write {
                    if #available(iOS 11.0, *) {
                        realm.add(Sushi(Int(data[0])!, data[1], data[2], data[3], data[4], data[5]))
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
        return true
    }
    
//    func loadSeedRealm() -> Realm {
//        var config = Realm.Configuration()
//        let path = Bundle.main.path(forResource: "sushi", ofType: "realm")
//        config.fileURL = URL(string: path!)
//        Realm.Configuration.defaultConfiguration = config
//        return try! Realm()
//    }
    
    func csvArrayToData(array: [String]) -> [[String]]{
        var sushiArray: [[String]] = []
        for elem in array {
            sushiArray.append(elem.components(separatedBy: ","))
        }
        sushiArray.removeFirst()
        sushiArray.removeLast()
        
        return sushiArray
    }
    
    func csvToArray (fileName: String, type: String) -> [String]! {
        var csvArr: [String] = []
        if let csvPath = Bundle.main.path(forResource: fileName, ofType: type) {
            do {
                let csvStr = try String(contentsOfFile:csvPath, encoding:String.Encoding.utf8)
                csvArr = csvStr.components(separatedBy: .newlines)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        return csvArr
    }
    
    func realmMigration() {
        let config = Realm.Configuration(
            // 新しいスキーマバージョンを設定します。以前のバージョンより大きくなければなりません。
            // （スキーマバージョンを設定したことがなければ、最初は0が設定されています）
            schemaVersion: 10,
            
            // マイグレーション処理を記述します。古いスキーマバージョンのRealmを開こうとすると
            // 自動的にマイグレーションが実行されます。
            migrationBlock: { migration, oldSchemaVersion in
                // 最初のマイグレーションの場合、`oldSchemaVersion`は0です
                if (oldSchemaVersion < 1) {
                    // 何もする必要はありません！
                    // Realmは自動的に新しく追加されたプロパティと、削除されたプロパティを認識します。
                    // そしてディスク上のスキーマを自動的にアップデートします。
                }
        })
        //        let path = Bundle.main.path(forResource: "SushiLib", ofType: "realm")
        // デフォルトRealmに新しい設定を適用します
        Realm.Configuration.defaultConfiguration = config
        
        // Realmファイルを開こうとしたときスキーマバージョンが異なれば、
        // 自動的にマイグレーションが実行されます
        let realm = try! Realm()
        
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

