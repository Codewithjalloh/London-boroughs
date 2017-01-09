//
//  BoroughLinksTableViewController.swift
//  London boroughs
//
//  Created by wealthyjalloh on 08/01/2017.
//  Copyright © 2017 CWJ. All rights reserved.
//

import UIKit
import SafariServices

class BoroughLinksTableViewController: UITableViewController, SFSafariViewControllerDelegate {
    
    
    
    @IBOutlet weak var headerImage: UIImageView!
    
    var image = UIImage()
    var links = [[String: String]]()
    var locationLinksTitle = String()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        headerImage.image = image
        navigationItem.title = locationLinksTitle
        
        navigationController?.navigationBar.tintColor = .black
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return links.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinkCell", for: indexPath) as! DetailsTableViewCell
        
        
        let arrayOfLinks = links[indexPath.row]
        let linkTitle = arrayOfLinks.keys
        let linkTitleResult = Array(linkTitle)
        
        cell.linkLabel.text = linkTitleResult[linkTitleResult.count - 1]

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // access the value of each dictionary in the list array 
        
        let arrayOfLinks = links[indexPath.row]
        let linkUrl = arrayOfLinks.values
        var url = Array(linkUrl)[linkUrl.count - 1]
        
        if url.hasPrefix("http://") == false && url.hasPrefix("https://") == false {
            url = "http://" + url
        }
        
        let safariVC = SFSafariViewController(url: URL(string: url)!)
        safariVC.view.tintColor = .black
        safariVC.delegate = self
        self.present(safariVC, animated: true, completion: nil)
        
        
    }

    

}
