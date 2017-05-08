//
//  Data.swift
//  Lure
//
//  Created by Colin Caufield on 2016-10-10.
//  Copyright © 2016 Secret Geometry, Inc. All rights reserved.
//

import Foundation
import MapKit

class Data {

    static var places = [

        Place(
            name: "Foreslope Hills",
            maxCount: 1,
            maxWeight: 1.0,
            dates: NSDateInterval(),
            points: [
                ("49°09.634'N", "123°23.048'W"),
                ("49°09.389'N", "123°22.622'W"),
                ("49°09.187'N", "123°22.587'W"),
                ("49°09.211'N", "123°23.567'W"),
                ("49°09.646'N", "123°23.543'W")
            ]
        ),
        Place(
            name: "Gabriola",
            maxCount: 2,
            maxWeight: 2.0,
            dates: NSDateInterval(),
            points: [
                ("49°13.672'N", "123°47.577'W"),
                ("49°13.235'N", "123°47.429'W"),
                ("49°13.185'N", "123°47.882'W"),
                ("49°13.391'N", "123°48.119'W"),
                ("49°13.623'N", "123°48.166'W")
            ]
        ),
        Place(
            name: "Halibut Bank",
            maxCount: 3,
            maxWeight: 3.0,
            dates: NSDateInterval(),
            points: [
                ("49°21.768'N", "123°41.501'W"),
                ("49°21.174'N", "123°40.045'W"),
                ("49°20.961'N", "123°40.139'W"),
                ("49°20.803'N", "123°39.860'W"),
                ("49°20.565'N", "123°40.182'W"),
                ("49°21.610'N", "123°41.843'W"),
                ("49°21.673'N", "123°42.643'W"),
                ("49°21.895'N", "123°43.908'W"),
                ("49°22.174'N", "123°44.748'W"),
                ("49°22.555'N", "123°44.456'W"),
                ("49°22.188'N", "123°42.167'W")
            ]
        ),
        Place(
            name: "Hornby",
            maxCount: 4,
            maxWeight: 4.0,
            dates: NSDateInterval(),
            points: [
                ("49°33.490'N", "124°29.230'W"),
                ("49°32.701'N", "124°28.760'W"),
                ("49°31.657'N", "124°29.434'W"),
                ("49°31.663'N", "124°29.896'W"),
                ("49°32.651'N", "124°29.752'W"),
                ("49°33.340'N", "124°29.935'W"),
                ("49°33.498'N", "124°29.773'W")
            ]
        ),
        Place(
            name: "Parksville",
            maxCount: 5,
            maxWeight: 5.0,
            dates: NSDateInterval(),
            points: [
                ("49°21.680'N", "124°19.762'W"),
                ("49°21.514'N", "124°18.893'W"),
                ("49°21.191'N", "124°17.723'W"),
                ("49°21.064'N", "124°17.724'W"),
                ("49°20.725'N", "124°18.380'W"),
                ("49°21.432'N", "124°19.811'W")
            ]
        ),
        /*
        Place(
            name: "Queen Charlotte",
            maxCount: 6,
            maxWeight: 6.0,
            dates: NSDateInterval(),
            points: []
        ),
        */
        Place(
            name: "Sechelt",
            maxCount: 7,
            maxWeight: 7.0,
            dates: NSDateInterval(),
            points: [
                ("49°25.948'N", "123°48.889'W"),
                ("49°25.899'N", "123°47.266'W"),
                ("49°25.373'N", "123°46.494'W"),
                ("49°24.734'N", "123°47.083'W"),
                ("49°24.910'N", "123°47.951'W"),
                ("49°24.253'N", "123°48.283'W"),
                ("49°24.845'N", "123°49.914'W")
            ]
        )
    ]
}
