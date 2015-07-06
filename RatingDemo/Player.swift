//
//  Player.swift
//  RatingDemo
//
//  Created by Macbook Pro MD102 on 5/14/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class Player: NSObject {
    
        var name:String
        var game:String
        var ratting:Int
        
        init(name:String,game:String,ratting:Int){
            self.name = name
            self.game = game
            self.ratting = ratting
           super.init()
        }
    
    
}
