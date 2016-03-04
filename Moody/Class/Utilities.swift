//
//  Utilities.swift
//  Moody
//
//  Created by Dominic Cheung on 17/02/2016.
//  Copyright © 2016 objc. All rights reserved.
//

import Foundation


extension NSURL {
    
    static var documentsURL: NSURL {
        return try! NSFileManager.defaultManager().URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: true)
    }
}