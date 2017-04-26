//
//  DataManager.swift
//  DTMTS
//
//  Created by Chris Delaney on 11/11/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

import UIKit
import RealmSwift

class DataManager {
    var dates = [GameDate]()
    var schedule: Schedule? = nil
    let realm = try! Realm()

//    func getGamesForDate(date: Date) -> List<Game>? {
//        if let currentSchedule = schedule {
//            for gameDate in currentSchedule.dates {
//                if gameDate.date! == date.toString() {
//                    return gameDate.games
//                }
//            }
//        }
//        return nil
//    }
    
    func getGamesForDate(date: Date) -> Results<Game>? {
        print(date.toString())
        return realm.objects(Game.self).filter(NSPredicate(format: "date = %@", date.toString()))
    }
    
    func addGameDate(gameDate: GameDate) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(gameDate)
        }
    }
    
    func addSchedule(schedule: Schedule) {
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
            realm.add(schedule)
        }
    }
}
