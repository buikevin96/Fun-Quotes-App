//
//  colorModel.swift
//  FunFacts
//
//  Created by Kevin Bui on 4/16/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//

import UIKit
import GameKit

struct colorModel {
    let colors = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), // Teal
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), // Yellow
        UIColor(red: 233/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), // Red
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), // Orange
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), // Dark
        UIColor(red: 105/255.0, green: 94/255.0, blue: 181/133.0, alpha: 1.0), // Purple
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0) // Green
    ]
    
    // Returning instance of UIColor, not string
    func getRandomColor() -> UIColor {
        let randomColor = GKRandomSource.sharedRandom().nextIntWithUpperBound(colors.count)
        
        return colors[randomColor]
    }
}
