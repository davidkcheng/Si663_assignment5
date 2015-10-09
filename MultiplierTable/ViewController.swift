//
//  ViewController.swift
//  MultiplierTable
//
//  Created by David Cheng on 10/8/15.
//  Copyright © 2015 davidcheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var multiplier: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
//        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
//        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
//        return cell
        let timesTable = Int(sliderValue.value * 12)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        multiplier.text = String(timesTable)
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        print(sliderValue)
        table.reloadData()
        
    }

    @IBOutlet weak var sliderValue: UISlider!
}

