//
//  Classification.swift
//  FieldStudy
//
//  Created by Blake Endsley on 11/3/17.
//  Copyright © 2017 Blake Endsley. All rights reserved.
//

import UIKit
enum Classification: String
{
    case amphibian
    case bird
    case fish
    case mammal
    case reptile
    case plant
    case insect
    
    var image: UIImage?
    {
        return UIImage(named: self.rawValue + "Icon")
    }
}
