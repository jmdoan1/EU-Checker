//
//  ViewController.swift
//  EU Checker
//
//  Created by Justin Doan on 6/24/16.
//  Copyright © 2016 Justin Doan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelCountry: UILabel!
    
    @IBOutlet var labelStatus: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locale = NSLocale.currentLocale()
        if let country = locale.objectForKey(NSLocaleCountryCode) as? String {
            print(country)
            let name: String! = locale.displayNameForKey(NSLocaleCountryCode, value: country)
            print(name)
            
            labelCountry.text = "You are from: \(name)"
            
            switch country {
            case "AT":
                labelStatus.text = "You ARE in the EU"
            case "BE":
                labelStatus.text = "You ARE in the EU"
            case "BG":
                labelStatus.text = "You ARE in the EU"
            case "HR":
                labelStatus.text = "You ARE in the EU"
            case "CY":
                labelStatus.text = "You ARE in the EU"
            case "CZ":
                labelStatus.text = "You ARE in the EU"
            case "DK":
                labelStatus.text = "You ARE in the EU"
            case "EE":
                labelStatus.text = "You ARE in the EU"
            case "FI":
                labelStatus.text = "You ARE in the EU"
            case "FR":
                labelStatus.text = "You ARE in the EU"
            case "DE":
                labelStatus.text = "You ARE in the EU"
            case "GR":
                labelStatus.text = "You ARE in the EU"
            case "HU":
                labelStatus.text = "You ARE in the EU"
            case "IE":
                labelStatus.text = "You ARE in the EU"
            case "IT":
                labelStatus.text = "You ARE in the EU"
            case "LV":
                labelStatus.text = "You ARE in the EU"
            case "LT":
                labelStatus.text = "You ARE in the EU"
            case "LU":
                labelStatus.text = "You ARE in the EU"
            case "MT":
                labelStatus.text = "You ARE in the EU"
            case "NL":
                labelStatus.text = "You ARE in the EU"
            case "PL":
                labelStatus.text = "You ARE in the EU"
            case "PT":
                labelStatus.text = "You ARE in the EU"
            case "RO":
                labelStatus.text = "You ARE in the EU"
            case "SK":
                labelStatus.text = "You ARE in the EU"
            case "SI":
                labelStatus.text = "You ARE in the EU"
            case "ES":
                labelStatus.text = "You ARE in the EU"
            case "SE":
                labelStatus.text = "You ARE in the EU"
            case "GB":
                labelStatus.text = "Sorry Bruv, you ARE NOT in the EU"
            case "US":
                labelStatus.text = "You ARE NOT in the EU. 'Murica!"
            case "CA":
                labelStatus.text = "Sorry, looks like you ARE NOT in the EU, eh?"
            default:
                labelStatus.text = "You ARE NOT in the EU"
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

