//
//  CoreDataStack.swift
//  Moody
//
//  Created by Dominic Cheung on 17/02/2016.
//  Copyright © 2016 objc. All rights reserved.
//

import CoreData


private let StoreURL = NSURL.documentsURL.URLByAppendingPathComponent("Moody.moody")

public func createMoodyMainContext() -> NSManagedObjectContext {
    // get the bundle where our managed object model resides
    let bundles = [NSBundle(forClass: Mood.self)]
    // load the data model
    guard let model = NSManagedObjectModel.mergedModelFromBundles(bundles) else {
        fatalError("Model not found")
    }
    let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: model)
    try! persistentStoreCoordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: StoreURL, options: nil)
    
    let context = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
    return context
}