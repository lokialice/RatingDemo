//
//  PlayerDetailTableViewController.swift
//  RatingDemo
//
//  Created by Macbook Pro MD102 on 5/14/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class PlayerDetailTableViewController: UITableViewController {
    
    @IBOutlet var txtName: UITextField!

    @IBOutlet var detailLabel: UILabel!
    var game:String = "Chess"
    var player:Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text =  game

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    @IBAction func cancelToAddPlayer(segue:UIStoryboardSegue){
    
    }
    
    @IBAction func selectedGame(segue:UIStoryboardSegue){
        if let gamePickerViewController = segue.sourceViewController as? GamePickerTableViewController, selectedGame = gamePickerViewController.selectedGame {
            detailLabel.text = selectedGame
            game = selectedGame
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            txtName.becomeFirstResponder()
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name:self.txtName.text, game: game, ratting: 1)
        }
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerTableViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }

}
