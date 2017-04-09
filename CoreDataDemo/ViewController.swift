//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Administrator on 08/04/17.
//  Copyright © 2017 Zerones. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        printPath()
        createStudenEntry()
        
        listAllStudenEntry()
    }
    
    func printPath(){
        
        let path = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask).first
        print("path ==>> \(path)")
        
    }
    
    func createStudenEntry(){
        let student = Student(context: appDelegate.persistentContainer.viewContext)
        student.name = "Shweta Patel"
        student.age = 90
        
        appDelegate.saveContext()
    }
    func listAllStudenEntry(){
        
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        fetchReq.predicate = NSPredicate.init(format: "age => 29")
        let arrStudents = try! managedContext.fetch(fetchReq) as? [Student]
        
        for std in arrStudents! {
            managedContext.delete(std)
            
        }
        appDelegate.saveContext()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

