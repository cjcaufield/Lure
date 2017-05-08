//
//  Place.swift
//  Lure
//
//  Created by Colin Caufield on 2016-10-10.
//  Copyright © 2016 Secret Geometry, Inc. All rights reserved.
//

import Foundation
import MapKit

struct Place {
    
    var name = ""
    var maxCount = 0
    var maxWeight = 0.0
    var dates = NSDateInterval()
    var points: [(String, String)] //[MKMapPoint] // CJC: replace later.
}

let testPoint = MKMapPoint(x: 0.0, y: 0.0)

struct GeoCoord {
    
    var degrees = 0.0
    var minutes = 0.0
    var seconds = 0.0
    var direction: Direction
    
    enum Direction {
        case North
        case South
        case East
        case West
    }
    
    init(degrees: Double, direction: Direction) {
        self.init(degrees: degrees, minutes: 0.0, seconds: 0.0, direction: direction)
    }
    
    init(degrees: Double, minutes: Double, direction: Direction) {
        self.init(degrees: degrees, minutes: minutes, seconds: 0.0, direction: direction)
    }
    
    init(degrees: Double, minutes: Double, seconds: Double, direction: Direction) {
        self.degrees = degrees
        self.minutes = minutes
        self.seconds = seconds
        self.direction = direction
    }
    
    init?(_ description: String) {
        
        // CJC: make this initializer more robust later.
        
        let str = description.trimmingCharacters(in: .whitespaces).capitalized
        if str.isEmpty {
            return nil
        }
        
        let degreesSymbolRange = str.range(of: "°" )
        let minutesSymbolRange = str.range(of: "\'")
        let secondsSymbolRange = str.range(of: "\"")
        
        let hasDegrees = degreesSymbolRange != nil
        let hasMinutes = degreesSymbolRange != nil
        let hasSeconds = degreesSymbolRange != nil
        
        let directionString = String(str.characters.suffix(1))
        let hasDirection = "NSEW".contains(directionString)
        if !hasDirection {
            return nil
        }
        
        var degrees = 0.0
        var minutes = 0.0
        var seconds = 0.0
        
        if hasDegrees {
            let degreesRange = str.startIndex ..< degreesSymbolRange!.lowerBound
            let degreesString = str.substring(with: degreesRange)
            degrees = Double(degreesString)!
        } else {
            return nil
        }
        
        if hasMinutes {
            let minutesRange = degreesSymbolRange!.upperBound ..< minutesSymbolRange!.lowerBound
            let minutesString = str.substring(with: minutesRange)
            minutes = Double(minutesString)!
        }
        
        if hasSeconds {
            let secondsRange = minutesSymbolRange!.upperBound ..< secondsSymbolRange!.lowerBound
            let secondsString = str.substring(with: secondsRange)
            seconds = Double(secondsString)!
        }
        
        var direction = Direction.North
        
        switch directionString {
        case "N": direction = .North
        case "S": direction = .South
        case "E": direction = .East
        case "W": direction = .West
        default: break
        }
        
        self.init(degrees: degrees, minutes: minutes, seconds: seconds, direction: direction)
    }
    
    var doubleValue: Double {
        let sign = (self.direction == .North || self.direction == .East) ? +1.0 : -1.0
        return sign * (self.degrees + self.minutes / 60.0 + self.seconds / 3600.0)
    }
    
    var description: String {
        
        var str = "\(self.degrees)°"
        
        if self.minutes != 0.0 {
            str += " \(self.minutes)'"
        }
        
        if self.seconds != 0.0 {
            str += " \(self.seconds)\""
        }
        
        switch self.direction {
        case .North:
            str += " N"
        case .South:
            str += " S"
        case .East:
            str += " E"
        case .West:
            str += " W"
        }
        
        return str
    }
}
