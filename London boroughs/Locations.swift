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


let barking = Location(title: "Barking", image: UIImage(named: "barking")!, links: barkingLinks)

let barnet = Location(title: "Barnet", image: UIImage(named:"barnet")!, links: barkingLinks)

let camden = Location(title: "Camden", image: UIImage(named: "camden")!, links:camdenLinks)

let croydon = Location(title: "Croydon", image: UIImage(named: "croydon")!, links: croydonLinks)

let greenwich = Location(title: "Greenwich", image: UIImage(named: "greenwich")!, links: greenwichLinks)

let hackney = Location(title: "Hackney", image: UIImage(named: "hackney")!, links: hackneyLinks)

let hammersmith = Location(title: "Hammersmith", image: UIImage(named: "Hammersmith")!, links: hammersmithLinks)

let islington = Location(title: "Islington", image: UIImage(named: "islington")!, links: islingtonLinks)

let KensingtonAndChelsea = Location(title: "Kens & Chelsea", image: UIImage(named: "ken&chelsea")!, links: kensingtonAndChelseaLinks)


let lambeth = Location(title: "Lambeth", image: UIImage(named: "lambeth")!, links: lambethLinks)

let lewisham = Location(title: "Lewisham", image:UIImage(named:"lewisham")!, links: lewishamLinks)

let southwark = Location(title: "Southwark", image: UIImage(named:"southwark")!, links: southwarkLinks)

let towerHamlets = Location(title: "Tower Hamlets", image: UIImage(named:"towerhamlets")!, links: towelhamletsLinks)


















