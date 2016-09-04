//
//  SettingsViewController.swift
//  What's The Weather
//
//  Created by Gabriele on 9/3/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var languageOptions: [Languages] = []
    @IBOutlet weak var unitChooser: UISegmentedControl!
    @IBOutlet weak var languagePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.languagePicker.delegate = self
        self.languagePicker.dataSource = self
        
        // Set language options in picker
        languageOptions = [Languages.English, Languages.Spanish, Languages.Italian, Languages.French, Languages.German]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languageOptions.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(languageOptions[row])
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(languageOptions[row])
    }
}
