//: Playground - noun: a place where people can play

import Foundation
import UIKit


enum Setting {
    case netherfieldHall
    case clevelandPark
    case kellynchHall
    
    var backgroundColor: UIColor {
        switch self {
        case .netherfieldHall:
            return .blue
        case .clevelandPark:
            return .yellow
        case .kellynchHall:
            return .green
        }
    }
    
    var suitors: [Suitor] {
        switch self {
        case .netherfieldHall:
            return [.wickham, .darcy]
        case .clevelandPark:
            return [.willoughby, .brandon]
        case .kellynchHall:
            return [.wentworth]
        }
    }
}

enum Suitor {
    case wickham
    case darcy
    case willoughby
    case brandon
    case wentworth
    
    // get real names
    var name:String {
        switch self {
        case .wickham:
           return "Wickham"
        case .willoughby:
            return "Willoughby"
        case .darcy:
            return "Darcy"
        case .brandon:
            return "Brandon"
        case .wentworth:
            return "Wentworth"
        }
    }
    
    var description: String {
        switch self {
        case .wickham:
            return "Immoral con-man"
        case .darcy:
            return "Insufferable, but maybe not?"
        case .willoughby:
            return "Charming, but a jerk"
        case .brandon:
            return "Surprisingly sweet"
        case .wentworth:
            return "Guarded, but pining"
        }
    }
    
    var sort: Standing {
        switch self {
        case .willoughby, .wickham:
            return .scoundrel
        case .brandon, .darcy, .wentworth:
            return .gentleman
        }
    }
}

enum Standing {
    case gentleman
    case scoundrel
}

func doSomeSettingUIBusiness() {
    
    backgroundColor = setting.backgroundColor
    
    for suitor in setting.suitors {
        print("\(suitor.name): \(suitor.description)")
        // maybe do something useful in the UI, like set some labels
    }
}


func uglySetupCell(for setting: String, suitor: String) {
    let cell = SettingCell()
    
    if setting == "Netherfield Hall" {
        cell.backgroundColor = .blue
    } else if setting == "Cleveland Park" {
        cell.backgroundColor = .yellow
    } else if setting == "Kellynch Hall" {
        cell.backgroundColor = .green
    }
    
    if suitor == "Darcy" {
        suitorLabel.text = "Insufferable, but maybe not?"
    } else if suitor == "Wickham" {
        suitorLabel.text = "Immoral con-man"
    } else if suitor == "Willoughby" {
        //you know what, this is exhausting logic and I got tired
    }
}

func switchCellSetup(for setting: String, suitor: String) {
    let cell = SettingCell()
    
    switch setting {
    case "Netherfield Hall":
        cell.backgroundColor = .blue
    case "Cleveland Park":
        cell.backgroundColor = .yellow
    case "Kellynch Hall":
        cell.backgroundColor = .green
    }
    
    switch suitor {
    case "Darcy":
        suitorLabel.text = "Insufferable, but maybe not?"
    default:
        // you know what, I'm still tired
    }
}



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
        cell?.textLabel?.text = "Insufferable, but maybe not?"
    }
    
case "Cleveland Park":
    cell?.tintColor = .yellowColor()
    
    switch suitor.name {
    case "Willoughby":
        cell?.textLabel?.text = "Charming, but a jerk"
    case "Brandon":
        cell?.textLabel?.text = "Surprisingly sweet"
    }
}


func acceptsProposal(suitor: gentleman) -> Bool {
    if !suitor.hasHat || suitor.income < 1200 {
        return false
    }
    else {
        return true
    }
}


func acceptsProposal(suitor: gentleman) -> Bool {
    guard suitor.hasHat else {
        return false
    }
    
    guard suitor.income > 12_000 else {
        return false
    }
    
    return true
}


public protocol WooingDelegate {
    func wooingAttempt()
}

struct gentleman: WooingDelegate {
    func wooingAttempt() {
        print("You must allow me to tell you how ardently I admire and love you.")
    }
}

struct scoundrel: WooingDelegate {
    func wooingAttempt() {
        print("I know it's not funny, but your perfume smells like your daddy's got money.")
    }
}

class suitorTableViewCell: UITableViewCell {
   // some cell set up 
    
    var wooingDelegate: WooingDelegate?
    
    @IBAction func wooingButtonTapped(sender: UIButton) {
        if let wooingDelegate = wooingDelegate {
            wooingDelegate.wooingAttempt()
        }
    }
    
    @IBAction func sendLoveLetterButtonTapped() {
        wooingDelegate.sendLoveLetter()
    }
}

func createSuitor() {
    if let name = caller.name{
        if let hasHat = caller.hashat() {
            if let income = caller.income {
                if let hasHorse = caller.hasHorse() {
                    sendToServer(name, hasHat: hasHat, income: income, hasHorse: hasHorse)
                } else {
                    print("No horse")
                }
            } else {
                print("No income")
            }
        } else {
            print("No hat")
        }
    } else {
        print("No name")
    }
}

func createSuitor() {
    guard let name = caller.name else {
        print("No name")
        return
    }
    
    guard let hasHat = caller.hasHat else {
        print("No hat")
        return
    }
    
    guard let income = caller.income else {
        print("No income")
        return
    }
    
    guard let hasHorse = caller.hasHorse else {
        print("No horse")
        return
    }
    
    sendToServer(name, hasHat: hasHat, income:income, hasHorse: hasHorse)
}

class SuitorListViewController: UIViewController {
    let scoundrels: [String]
    let gentlemen: [String]
}

extension SuitorListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return gentlemen.count
        } else if section == 1 {
            return scoundrels.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SuitorListTableViewCell") as! SuitorListTableViewCell
        let suitor = suitorList[indexPath.row]
        cell.setupCell(with: suitor)
        
        return cell
    }
    
}

protocol WooingDelegate {
    func wooingAttempt()
}

extension WooingDelegate {
    
    func sendLoveLetter() {
        print("You pierce my soul. I am half agony, half hope. Tell me not that I am too late, that such precious feelings are gone for ever. I offer myself to you again with a heart even more your own than when you almost broke it, eight years and a half ago. Dare not say that man forgets sooner than woman, that his love has an earlier death. I have loved none but you. Unjust I may have been, weak and resentful I have been, but never inconstant.")
    }
    
}






























