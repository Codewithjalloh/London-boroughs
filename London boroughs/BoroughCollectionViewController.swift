//
//  BoroughCollectionViewController.swift
//  London boroughs
//
//  Created by wealthyjalloh on 08/01/2017.
//  Copyright © 2017 CWJ. All rights reserved.
//

import UIKit

private let reuseIdentifier = "BoroughCell"

class BoroughCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return locations.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BoroughCollectionViewCell
        
        cell.boroughImage.image = locations[indexPath.row].image
        cell.boroughTitle.text = locations[indexPath.row].title
        
        
        cell.layer.cornerRadius = 1.0
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 1.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
    
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let screenSize = UIScreen.main.bounds.size.width
        let divisor = (screenSize - 30) / 2
        var numberOfCellsInRow: Double
        
        numberOfCellsInRow = Double(screenSize / divisor)
        print("The numberOfCellInRow is \(numberOfCellsInRow)")
        
        
        let cellWidth = screenSize / CGFloat(numberOfCellsInRow)
        return CGSize(width: cellWidth, height: cellWidth)
        
        
        
    }
    
    
    
  
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "boroughLinks" {
            let boroughVC = segue.destination as! BoroughLinksTableViewController
            let cell = sender as! BoroughCollectionViewCell
            let indexPath = self.collectionView?.indexPath(for: cell)
            
            
            boroughVC.image = locations[(indexPath?.row)!].image
            boroughVC.links = locations[(indexPath?.row)!].links
            boroughVC.locationLinksTitle = locations[(indexPath?.row)!].title.uppercased()
            
        }
        
        
     
     }

}
