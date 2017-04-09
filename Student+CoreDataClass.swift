//
//  Student+CoreDataClass.swift
//  CoreDataDemo
//
//  Created by Administrator on 09/04/17.
//  Copyright © 2017 Zerones. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

@objc(Student)
public class Student: NSManagedObject {

    
    func printDescription(){
        print("name ==>> ", name ?? "No Name")
        print("age ==>> ", age ?? "No Age")
    }
}
