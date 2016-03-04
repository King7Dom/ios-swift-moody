//
//  Mood.swift
//  Created by Dominic Cheung on 9/02/2016.
//

import UIKit

public class Mood: ManagedObject {
    @NSManaged public private(set) var colors: [UIColor]
    @NSManaged public private(set) var date: NSDate
}


