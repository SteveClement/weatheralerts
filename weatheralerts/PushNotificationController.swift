//
//  PushNotificationController.swift
//  weatheralerts
//
//  Created by Steve Clement on 16/03/15.
//  Copyright (c) 2015 Steve Clement. All rights reserved.
//

import Foundation

class PushNotificationController : NSObject {
    
    override init() {
        super.init()
        let parseApplicationId = valueForAPIKey(keyname: "PARSE_APPLICATION_ID")
        let parseClientKey     = valueForAPIKey(keyname: "PARSE_CLIENT_KEY")
        
        Parse.setApplicationId(parseApplicationId, clientKey: parseClientKey)
    }
    
}