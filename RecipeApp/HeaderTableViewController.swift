//
//  HeaderTableViewController.swift
//  RecipeApp
//
//  Created by Canderen Kaymak on 21.02.2020.
//  Copyright © 2020 Canderen Kaymak. All rights reserved.
//

import UIKit

class HeaderTableViewController: UITableViewController {

    let headerArray = ["Mantı",
                       "Köfte",
                       "Cacık",
                       "Ali Nazik"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return headerArray.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderTableViewCell
        
        let rowNumber = indexPath.row
        cell.headerTxt.text = headerArray[rowNumber]
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowNumber = indexPath.row
        
        //vc - viewController
        let vc = self.storyboard?.instantiateViewController(identifier: "ReadRecipeStoryBoardID") as! ReadRecipeViewController
        
        vc.selectedRow = rowNumber
        vc.title = headerArray[rowNumber]
        self.show(vc, sender: nil)
    
    }

}
