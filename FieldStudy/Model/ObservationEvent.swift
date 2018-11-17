//
//  ObservationEvent.swift
//  FieldStudy
//
//  Created by Blake Endsley on 11/3/17.
//  Copyright © 2017 Blake Endsley. All rights reserved.
//

import Foundation

struct ObservationEvent
{
    let classification: Classification
    let title: String
    let description: String
    let date: Date
    init(classification: Classification, title: String, description: String, date: Date)
    {
        self.title = title
        self.classification = classification
        self.description = description
        self.date = date
    }
    
    init?(classificationName: String, title: String, description: String, date: Date)
    {
        if let classification = Classification(rawValue: classificationName)
        {
            self.init(classification: classification, title: title, description: description, date: date)
        }
        else
        {
            return nil
        }
    }
    
}
