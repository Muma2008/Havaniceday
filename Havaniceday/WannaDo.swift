//
//  WannaDo.swift
//  Havaniceday
//
//  Created by MA on 2023/06/25.
//

import Foundation
import RealmSwift

class WannaDo: Object{
    @Persisted(primaryKey: true) var id: ObjectId
       @Persisted var title: String = ""
       @Persisted var category: String = ""
       @Persisted var detail: String = ""
       
       override static func primaryKey() -> String? {
               return "id"
       }
}
class WannaDoList: Object {
    let list = List<WannaDo>()
}
