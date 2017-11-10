//
//  ViewController.swift
//  miraclepill
//
//  Created by Lance Robbins on 11/8/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let states = ["Alabama", "Connecticut", "Delaware", "Florida", "Georgia", "Virginia"]

    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var miracleImg: UIImageView!
    @IBOutlet weak var miracleLbl: UILabel!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxtField: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetTxtField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var zipcodeLbl: UILabel!
    @IBOutlet weak var zipcodeTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipcodeLbl.isHidden = true
        zipcodeTxtField.isHidden = true
    }
    
    // only 1 column, return 1 state
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // amount of rows depends on amount of states
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // Return the proper row based on the row index that came in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
     
        // re-display country and zipcode labels and fields
        countryLbl.isHidden = false
        countryTxtField.isHidden = false
        zipcodeLbl.isHidden = false
        zipcodeTxtField.isHidden = false
    }
    
    @IBAction func buyNowBtn(_ sender: Any) {
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        zipcodeLbl.isHidden = true
        zipcodeTxtField.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTxtField.isHidden = true
        streetLbl.isHidden = true
        streetTxtField.isHidden = true
        cityLbl.isHidden = true
        cityTxtField.isHidden = true
        stateLbl.isHidden = true
        miracleLbl.isHidden = true
        miracleImg.isHidden = true
        priceLbl.isHidden = true
        divider.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
    }
}

