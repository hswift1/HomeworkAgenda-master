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
        
        let firstThursdayClass = Homework(name: "English", description: "read to page 36")
        let ThursdayClasses = DayDue(name: "Thursday", homework: [firstThursdayClass])
        
        let firstFridayClass = Homework(name: "History", description: "outline and bibliography due for in-class essay")
        let secondFridayClass = Homework(name: "Precalc", description: "finish graphing worksheet #2")
        let thirdFridayClass = Homework(name: "French", description: "final draft of Stephane report")
        let FridayClasses = DayDue(name: "Friday", homework: [firstFridayClass, secondFridayClass, thirdFridayClass])
        
        return [ThursdayClasses, FridayClasses]
        
        
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
