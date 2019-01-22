//
//  HomeworkTableViewController2.swift
//  HomeworkAgenda
//
//  Created by Soft Dev Student on 1/16/19.
//  Copyright © 2019 Maia. All rights reserved.
//

import UIKit

class HomeworkTableViewController: UITableViewController {
    
    var dayDue: [DayDue] {
        
        let firstTuesdayClass = Homework(name: "English", description: "read to pages 37-48")
        let TuesdayClasses = DayDue(name: "Tuesday", homework: [firstTuesdayClass])
        
        let firstThursdayClass = Homework(name: "History", description: "check veracross + fill out part 3 of chart")
        let ThursdayClasses = DayDue(name: "Thursday", homework: [firstThursdayClass])
        
        let firstFriadyClass = Homework(name: "French", description: "revue de presse")
        let FridayClasses = DayDue(name: "Friday", homework: [firstFriadyClass])
        
        return [TuesdayClasses, ThursdayClasses, FridayClasses]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dayDue.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayDue[section].homework.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeworkCell", for: indexPath)
        
        let dayDue1 = dayDue[indexPath.section]
        let homework = dayDue1.homework[indexPath.row]
        
        cell.textLabel?.text = homework.name
        cell.detailTextLabel?.text = homework.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dayDue[section].name
    }
}
