//: Playground - noun: a place where people can play

import UIKit

public protocol wooingDelegate {
    var endearments: String { get }
    func proposal() -> Bool
}

class gentleman: AnyObject {
    var hasHat: Bool = true
    var hasHorse: Bool = true
}

class upstandingGentleman: wooingDelegate {
    var income: Int = 10000
    var endearments = "You must allow me to tell you how ardently I admire and love you."
    
    func proposal() -> Bool {
        happilyEverAfter()
        return true
    }
    
    func happilyEverAfter() {
        // lives happily ever after
    }
}

class scoundrel: wooingDelegate {
    var debt: Int = -600
    var endearments = "I know it's not funny, but your perfume smells like your daddy's got money"
    
    func proposal() -> Bool {
        getSlapped()
        return false
    }
    
    func getSlapped() {
        // gets slapped in the face
    }
}

//func acceptsProposal(suitor: gentleman) -> Bool {
//    if !suitor.hasHat || suitor.income < 1200 {
//        return false
//    }
//    else {
//        return true
//    }
//}

func acceptsProposal(suitor: gentleman) -> Bool {
    guard suitor.hasHat else {
        return false
    }
    
    guard suitor.income > 12000 else {
        return false
    }
    
    return true
}

let suitorCellIdentifier = "SuitorCellIdentifier"
var suitor: AnyObject!
var setting: String!

func tableView(tableView: UITableView,
    cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(suitorCellIdentifier)
        if indexPath == 1 {
            switch setting {
            case "Netherfield Hall":
                cell?.tintColor = .blueColor()
                
                switch suitor.name {
                case "Wickham":
                    cell?.textLabel?.text = "Immoral con-man"
                case "Darcy":
                    cell?.textLabel?.text =
                }
                
            case "Cleveland Park":
                cell?.tintColor = .yellowColor()
                
                switch suitor.name {
                case "Willoughby":
                    cell?.textLabel?.text = "Charming, but a jerk"
                case "Brandon":
                    cell?.textLabel?.text = "Surprisingly sweet"
                }
                
            case "Kellynch Hall":
                cell?.tintColor = .greenColor()
                
                switch suitor.name {
                case "Elliot":
                    cell?.textLabel?.text = "Probably shady"
                case "Wentworth":
                    cell?.textLabel?.text = "The one that got away, almost"
                }
            }
        }
}

//
//        if indexPath == 1 {
//            
//            if setting == "Netherfield Hall" {
//                cell?.tintColor = .blueColor()
//                
//                if suitor.name == "Wickham" {
//                    cell?.textLabel?.text = "Immoral con-man"
//                }
//                else if suitor.name == "Darcy" {
//                    cell?.textLabel?.text = "Insufferable, but maybe not?"
//                }
//            }
//            else if setting == "Cleveland Park" {
//                cell?.tintColor = .yellowColor()
//                
//                if suitor.name == "Willoughby" {
//                    cell?.textLabel?.text = "Charming, but a jerk"
//                }
//                else if suitor.name == "Brandon" {
//                    cell?.textLabel?.text = "Surprisingly sweet"
//                }
//                
//            }
//            else if setting == "Kellynch Hall" {
//                cell?.tintColor = .greenColor()
//                
//                if suitor.name == "Elliot" {
//                    cell?.textLabel?.text = "Probably shady"
//                }
//                else if suitor.name == "Wentworth" {
//                    cell?.textLabel?.text = "The one that got away, almost"
//                }
//            }
//
//            
//            }


if setting == "Netherfield Hall" {
    cell?.tintColor = .blueColor()
    
    if suitor.name == "Wickham" {
        cell?.textLabel?.text = "Immoral con-man"
    }
    else if suitor.name == "Darcy" {
        cell?.textLabel?.text = "Insufferable, but maybe not?"
    }
}
else if setting == "Cleveland Park" {
    cell?.tintColor = .yellowColor()
    
    if suitor.name == "Willoughby" {
        cell?.textLabel?.text = "Charming, but a jerk"
    }
    else if suitor.name == "Brandon" {
        cell?.textLabel?.text = "Surprisingly sweet"
    }
    
}
else if setting == "Kellynch Hall" {
    cell?.tintColor = .greenColor()
    
    if suitor.name == "Elliot" {
        cell?.textLabel?.text = "Probably shady"
    }
    else if suitor.name == "Wentworth" {
        cell?.textLabel?.text = "The one that got away, almost"
    }
}


switch setting {
case "Netherfield Hall":
    cell?.tintColor = .blueColor()
    
    switch suitor.name {
    case "Wickham":
        cell?.textLabel?.text = "Immoral con-man"
    case "Darcy":
        cell?.textLabel?.text =
    }
    
case "Cleveland Park":
    cell?.tintColor = .yellowColor()
    
    switch suitor.name {
    case "Willoughby":
        cell?.textLabel?.text = "Charming, but a jerk"
    case "Brandon":
        cell?.textLabel?.text = "Surprisingly sweet"
    }
    
case "Kellynch Hall":
    cell?.tintColor = .greenColor()
    
    switch suitor.name {
    case "Elliot":
        cell?.textLabel?.text = "Probably shady"
    case "Wentworth":
        cell?.textLabel?.text = "The one that got away, almost"
    }
}













