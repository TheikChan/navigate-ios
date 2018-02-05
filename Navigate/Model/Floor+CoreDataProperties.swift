//
//  Floor+CoreDataProperties.swift
//  Navigate
//
//  Created by Răzvan-Gabriel Geangu on 05/02/2018.
//  Copyright © 2018 Răzvan-Gabriel Geangu. All rights reserved.
//
//

import Foundation
import CoreData


extension Floor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Floor> {
        return NSFetchRequest<Floor>(entityName: "Floor")
    }

    @NSManaged public var level: Int16
    @NSManaged public var tiles: NSObject?
    @NSManaged public var tilesRelation: Tile?

}
