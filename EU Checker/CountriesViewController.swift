//
//  CountriesViewController.swift
//  EU Checker
//
//  Created by Justin Doan on 6/24/16.
//  Copyright © 2016 Justin Doan. All rights reserved.
//

import UIKit



class CountriesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var pickerView: UIPickerView!
    
    var locales = [Locale]()
    
    @IBOutlet var labelStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        labelStatus.text = ""

        self.getLocales()
        // Do any additional setup after loading the view.
    }
    
    struct Locale {
        let countryCode: String
        let countryName: String
    }
    
    func getLocales() -> [Locale] {
        
        for localeCode in NSLocale.ISOCountryCodes() {
            let countryName = NSLocale.systemLocale().displayNameForKey(NSLocaleCountryCode, value: localeCode)!
            let countryCode = localeCode
            let locale = Locale(countryCode: countryCode, countryName: countryName)
            locales.append(locale)
        }
        
        return locales
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locales.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locales[row].countryName
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let code = locales[row].countryCode
        let name = locales[row].countryName
        
        switch code {
        case "AT":
            labelStatus.text = "\(name) IS in the EU"
        case "BE":
            labelStatus.text = "\(name) IS in the EU"
        case "BG":
            labelStatus.text = "\(name) IS in the EU"
        case "HR":
            labelStatus.text = "\(name) IS in the EU"
        case "CY":
            labelStatus.text = "\(name) IS in the EU"
        case "CZ":
            labelStatus.text = "\(name) IS in the EU"
        case "DK":
            labelStatus.text = "\(name) IS in the EU"
        case "EE":
            labelStatus.text = "\(name) IS in the EU"
        case "FI":
            labelStatus.text = "\(name) IS in the EU"
        case "FR":
            labelStatus.text = "\(name) IS in the EU"
        case "DE":
            labelStatus.text = "\(name) IS in the EU"
        case "GR":
            labelStatus.text = "\(name) IS in the EU"
        case "HU":
            labelStatus.text = "\(name) IS in the EU"
        case "IE":
            labelStatus.text = "\(name) IS in the EU"
        case "IT":
            labelStatus.text = "\(name) IS in the EU"
        case "LV":
            labelStatus.text = "\(name) IS in the EU"
        case "LT":
            labelStatus.text = "\(name) IS in the EU"
        case "LU":
            labelStatus.text = "\(name) IS in the EU"
        case "MT":
            labelStatus.text = "\(name) IS in the EU"
        case "NL":
            labelStatus.text = "\(name) IS in the EU"
        case "PL":
            labelStatus.text = "\(name) IS in the EU"
        case "PT":
            labelStatus.text = "\(name) IS in the EU"
        case "RO":
            labelStatus.text = "\(name) IS in the EU"
        case "SK":
            labelStatus.text = "\(name) IS in the EU"
        case "SI":
            labelStatus.text = "\(name) IS in the EU"
        case "ES":
            labelStatus.text = "\(name) IS in the EU"
        case "SE":
            labelStatus.text = "\(name) IS in the EU"
        case "GB":
            labelStatus.text = "Sorry Bruv, \(name) IS NOT in the EU"
        case "US":
            labelStatus.text = "\(name) IS NOT in the EU. 'Murica!"
        case "CA":
            labelStatus.text = "Sorry, looks like \(name) IS NOT in the EU, eh?"
        default:
            labelStatus.text = "\(name) IS NOT in the EU"
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
