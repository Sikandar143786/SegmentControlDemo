//
//  ViewController.swift
//  SegmentControlDemo
//
//  Created by Akash Technolabs on 08/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    var arrayName1 = [String]()
    var arrayName2 = [String]()
    var arrayName3 = [String]()
    var arrayName4 = [String]()
    var arrayName5 = [String]()
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        arrayName1 = ["a","b","c","d"]
        arrayName2 = ["e","f","g","h"]
        arrayName3 = ["i","j","k","l"]
        arrayName4 = ["m","n","o","p"]
        arrayName5 = ["q","r","s","t"]
        myTableView.reloadData()
        
    }

    
    @IBAction func btnSegmentAction(_ sender: UISegmentedControl)
    {
//
//        if sender.selectedSegmentIndex == 0
//        {
//            view.backgroundColor = UIColor.red
//            let destination = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
//            self.present(destination, animated: true, completion: nil)
//        }
//        else if sender.selectedSegmentIndex == 1
//        {
//            view.backgroundColor = UIColor.green
//        }
//        else if sender.selectedSegmentIndex == 2
//        {
//            view.backgroundColor = UIColor.blue
//        }
//        else if sender.selectedSegmentIndex == 3
//        {
//            view.backgroundColor = UIColor.yellow
//        }
//        else if sender.selectedSegmentIndex == 4
//        {
//            view.backgroundColor = UIColor.orange
//        }
        
        
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if segmentControll.selectedSegmentIndex == 0
        {
            return arrayName1.count
        }
        else if segmentControll.selectedSegmentIndex == 1
        {
            return arrayName2.count
        }
        else if segmentControll.selectedSegmentIndex == 2
        {
            return arrayName3.count
        }
        else if segmentControll.selectedSegmentIndex == 3
        {
            return arrayName4.count
        }
        else if segmentControll.selectedSegmentIndex == 4
        {
            return arrayName5.count
        }
        
        return arrayName1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if segmentControll.selectedSegmentIndex == 0
        {
            cell?.textLabel?.text = arrayName1[indexPath.row]
        }
        
        else if segmentControll.selectedSegmentIndex == 1
        {
            cell?.textLabel?.text = arrayName2[indexPath.row]
        }
        else if segmentControll.selectedSegmentIndex == 2
        {
            cell?.textLabel?.text = arrayName3[indexPath.row]
        }
        else if segmentControll.selectedSegmentIndex == 3
        {
            cell?.textLabel?.text = arrayName4[indexPath.row]
        }
        else if segmentControll.selectedSegmentIndex == 4
        {
            cell?.textLabel?.text = arrayName5[indexPath.row]
        }
        
        
        return cell!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

