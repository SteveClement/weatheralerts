//
//  WeatherServiceController.swift
//  weatheralerts
//
//  Created by Steve Clement on 17/03/15.
//  Copyright (c) 2015 Steve Clement. All rights reserved.
//

import Foundation

class WeatherServiceController : NSObject {
    
    override init() {
        super.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "locationAvailable:", name: "LOCATION_AVAILABLE", object: nil)
        
        let aerisConsumerId = valueForAPIKey(keyname: "AERIS_CONSUMER_ID")
        let aerisConsumerSecret = valueForAPIKey(keyname: "AERIS_CONSUMER_SECRET")
        
        AerisEngine.engineWithKey(aerisConsumerId, secret: aerisConsumerSecret)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "locationAvailable:",
            name: "LOCATION_AVAILABLE",
            object: nil)
    }
    
    func locationAvailable(notification:NSNotification) -> Void {
        let userInfo = notification.userInfo as! Dictionary<String,String>
        
        println("WeatherService:  Location available \(userInfo)")
        
    }
    
}