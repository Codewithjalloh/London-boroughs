//
//  Locations.swift
//  London boroughs
//
//  Created by wealthyjalloh on 08/01/2017.
//  Copyright © 2017 CWJ. All rights reserved.
//

import Foundation
import UIKit

struct Location {
    let title: String
    let image: UIImage
    let links: [Dictionary<String, String>]
}
// Borought

let camden = Location(title: "Camden", image: UIImage(named: "camden")!, links:camdenLinks)

let croydon = Location(title: "Croydon", image: UIImage(named: "croydon")!, links: croydonLinks)

let hackney = Location(title: "Hackney", image: UIImage(named: "croydon")!, links: hackneyLinks)


let KensingtonAndChelsea = Location(title: "Kens & Chelsea", image: UIImage(named: "ken&chelsea")!, links: kensingtonAndChelseaLinks)


let lambeth = Location(title: "lambeth", image: UIImage(named: "lambeth")!, links: lambethLinks)










