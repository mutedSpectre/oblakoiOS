//
//  Project.swift
//  oblakoiOS
//
//  Created by Nikita on 07/08/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import Foundation
import SwiftyJSON

class Todo
{
    var id:Int
    var text:String
    var isCompleted:Bool
    var projectId:Int = 0
    
    init(id: Int, text:String, isCompleted:Bool)
    {
        self.id = id
        self.text = text
        self.isCompleted = isCompleted
    }
    
    init()
    {
        self.id = -1
        self.text = "Undefined"
        self.isCompleted = false
    }
    
    init(json: JSON)
    {
        self.id = json["id"].int!
        self.text = json["text"].string!
        self.isCompleted = json["isCompleted"].bool!
        self.projectId = json["project_id"].int!
    }
}
