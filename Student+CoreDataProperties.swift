//
//  Student+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Administrator on 09/04/17.
//  Copyright © 2017 Zerones. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student");
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var birthDate: NSDate?

}
