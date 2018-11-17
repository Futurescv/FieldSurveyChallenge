//
//  ObservationEventsJSONLoader.swift
//  FieldStudy
//
//  Created by Blake Endsley on 11/3/17.
//  Copyright © 2017 Blake Endsley. All rights reserved.
//

import Foundation

class ObservationEventsJSONLoader
{
    class func load(fileName: String) -> [ObservationEvent]
    {
        var events = [ObservationEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
            events = FieldStudyJSONParser.parse(data)
        }
        return events
    }
    
}
