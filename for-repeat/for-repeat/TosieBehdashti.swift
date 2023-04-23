//
//  TosieBehdashti.swift
//  for-repeat
//
//  Created by Hamid Mohammadi on 23/04/23.
//

import Foundation

struct TosieBehdashti {
    
    
    var tosie:String?
    
    mutating func setTosie(idTracker:CGFloat) {
        if idTracker > 0.5{
            tosie = "You Choose right, Welcome To The Dark Side"
            
        }
        else{
            tosie = "You Choose Wrong, Try Again"
        }
    }
}
