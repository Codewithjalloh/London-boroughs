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

    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let screenSize = UIScreen.main.bounds.size.width
        let divisor = (screenSize - 30) / 2
        var numberOfCellsInRow: Double
        
        numberOfCellsInRow = Double(screenSize / divisor)
      
        
        
        let cellWidth = screenSize / CGFloat(numberOfCellsInRow)
        return CGSize(width: cellWidth, height: cellWidth)
        
        
        
    }
 
    /*
    func layoutCells() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 5.0
        layout.minimumLineSpacing = 5.0
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width - 40)/3, height: ((UIScreen.main.bounds.size.width - 40)/3))
        collectionView!.collectionViewLayout = layout
    }
*/
    
    
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
    
    
    
  
    
    
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return locations.count
    }
    

    
  
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "boroughLinks" {
            
            let boroughViewController = segue.destination as! BoroughLinksTableViewController
            
            let cell = sender as! BoroughCollectionViewCell
            
            let indexPath = self.collectionView?.indexPath(for: cell)
            
            
            boroughViewController.image = locations[(indexPath?.row)!].image
            boroughViewController.links = locations[(indexPath?.row)!].links
            boroughViewController.locationLinksTitle = locations[(indexPath?.row)!].title.uppercased()
            
        }
        
        
     
     }

}
