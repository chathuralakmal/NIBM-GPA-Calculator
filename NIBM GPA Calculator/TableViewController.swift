//
//  TableViewController.swift
//  NIBM GPA Calculator
//
//  Created by Chathura Lakmal on 8/23/15.
//  Copyright (c) 2015 Chathura Lakmal. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var ModuleOneCredits: UITextField!
    @IBOutlet weak var ModuleTwoCredits: UITextField!
    @IBOutlet weak var ModuleThreeCredits: UITextField!
    @IBOutlet weak var ModuleFourCredits: UITextField!
    @IBOutlet weak var ModuleFiveCredits: UITextField!
    @IBOutlet weak var ModuleSixCredits: UITextField!
    @IBOutlet weak var ModuleSevenCredits: UITextField!
    @IBOutlet weak var ModuleEightCredits: UITextField!
    @IBOutlet weak var ModuleNineCredits: UITextField!
    @IBOutlet weak var ModuleTenCredits: UITextField!
    @IBOutlet weak var ModuleElevenCredits: UITextField!
    @IBOutlet weak var ModuleTwelveCredits: UITextField!
    @IBOutlet weak var ModuleThirteenCredits: UITextField!
    @IBOutlet weak var ModuleFourteenCredits: UITextField!
    @IBOutlet weak var ModuleFifteenCredits: UITextField!
    
    
    @IBOutlet weak var ModuleOneGrade: UITextField!
    @IBOutlet weak var ModuleTwoGrade: UITextField!
    @IBOutlet weak var ModuleThreeGrade: UITextField!
    @IBOutlet weak var ModuleFourGrade: UITextField!
    @IBOutlet weak var ModuleFiveGrade: UITextField!
    @IBOutlet weak var ModuleSixGrade: UITextField!
    @IBOutlet weak var ModuleSevenGrade: UITextField!
    @IBOutlet weak var ModuleEightGrade: UITextField!
    @IBOutlet weak var ModuleNineGrade: UITextField!
    @IBOutlet weak var ModuleTenGrade: UITextField!
    @IBOutlet weak var ModuleElevenGrade: UITextField!
    @IBOutlet weak var ModuleTwelveGrade: UITextField!
    @IBOutlet weak var ModuleThirteenGrade: UITextField!
    @IBOutlet weak var ModuleFourteenGrade: UITextField!
    @IBOutlet weak var ModuleFifteenGrade: UITextField!

    
    var gpa:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
        self.navigationController!.toolbarHidden = false;
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        tableView.addGestureRecognizer(tap)
        
        
    }

    @IBAction func Calculatebtn1(sender: AnyObject) {
        Calculate()
    }
   
    @IBAction func Calculatebtn2(sender: AnyObject) {
        Calculate()
    }
    
    func Calculate() {
        let TotalGiCi:Float = ((ModuleOneCredits.text as NSString).floatValue*(ModuleOneGrade.text as NSString).floatValue)+((ModuleTwoCredits.text as NSString).floatValue*(ModuleTwoGrade.text as NSString).floatValue)+((ModuleThreeCredits.text as NSString).floatValue*(ModuleThreeGrade.text as NSString).floatValue)+((ModuleFourCredits.text as NSString).floatValue*(ModuleFourGrade.text as NSString).floatValue)+((ModuleFiveCredits.text as NSString).floatValue*(ModuleFiveGrade.text as NSString).floatValue)+((ModuleSixCredits.text as NSString).floatValue*(ModuleSixGrade.text as NSString).floatValue)+((ModuleSevenCredits.text as NSString).floatValue*(ModuleSevenGrade.text as NSString).floatValue)+((ModuleEightCredits.text as NSString).floatValue*(ModuleEightGrade.text as NSString).floatValue)+((ModuleNineCredits.text as NSString).floatValue*(ModuleNineGrade.text as NSString).floatValue)+((ModuleTenCredits.text as NSString).floatValue*(ModuleTenGrade.text as NSString).floatValue)+((ModuleElevenCredits.text as NSString).floatValue*(ModuleElevenGrade.text as NSString).floatValue)+((ModuleTwelveCredits.text as NSString).floatValue*(ModuleTwelveGrade.text as NSString).floatValue)+((ModuleThirteenCredits.text as NSString).floatValue*(ModuleThirteenGrade.text as NSString).floatValue)+((ModuleFourteenCredits.text as NSString).floatValue*(ModuleFourteenGrade.text as NSString).floatValue)+((ModuleFifteenCredits.text as NSString).floatValue*(ModuleFifteenGrade.text as NSString).floatValue)
        
        
        let TotalCi:Float = (ModuleOneCredits.text as NSString).floatValue+(ModuleTwoCredits.text as NSString).floatValue+(ModuleThreeCredits.text as NSString).floatValue+(ModuleFourCredits.text as NSString).floatValue+(ModuleFiveCredits.text as NSString).floatValue+(ModuleSixCredits.text as NSString).floatValue+(ModuleSevenCredits.text as NSString).floatValue+(ModuleEightCredits.text as NSString).floatValue+(ModuleNineCredits.text as NSString).floatValue+(ModuleTenCredits.text as NSString).floatValue+(ModuleElevenCredits.text as NSString).floatValue+(ModuleTwelveCredits.text as NSString).floatValue+(ModuleThirteenCredits.text as NSString).floatValue+(ModuleFourteenCredits.text as NSString).floatValue+(ModuleFifteenCredits.text as NSString).floatValue
        
        if(TotalGiCi==0.0 && TotalCi==0.0){
            var alert = UIAlertController(title: "Error!", message:"Please fill some data before calculate", preferredStyle:UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated:true, completion: nil)
            
        }else{
            
            gpa = TotalGiCi/TotalCi
            
            println(TotalGiCi)
            println(TotalCi)
            println(gpa)
            
            
            
        }
        
        var alert = UIAlertController(title: "Your GPA", message:"\(gpa)", preferredStyle:UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated:true, completion: nil)
        

    }
    
    func DismissKeyboard(){
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 16
    }

    
   /* override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell
        self.viewWillAppear(true)
        
        let cell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }*/


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    override func tableView(tableView: UITableView,
        willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath){
    
            
            
            if(indexPath.row % 2 == 0){
                cell.backgroundColor = UIColor.clearColor()
                
            }else{
                
                cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
                cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
               // cell.t.backgroundColor=UIColor.whiteColor().colorWithAlphaComponent(0.0)
                
            }
    }

}
