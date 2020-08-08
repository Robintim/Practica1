//
//  PokePicker.swift
//  Practica1
//
//  Created by Daniel Alberto Vazquez Rodriguez on 8/7/20.
//  Copyright © 2020 Daniel Alberto Vazquez Rodriguez. All rights reserved.
//

import UIKit

class PokePicker: UIPickerView {
    public var data: [String]? {
        didSet {
            super.delegate = self
            super.dataSource = self
            self.reloadAllComponents()
        }
    }
    public var textFieldBeingEdited: UITextField?
    public var selectedValue: String {
        get {
            if let data = data {
                return data[selectedRow(inComponent: 0)]
            } else {
                return ""
            }
        }
    }
    
    private var pickerAccessory: UIToolbar?
    
    convenience init(textField : UITextField){
        self.init()
        self.textFieldBeingEdited = textField
        self.data = data
        self.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.backgroundColor = .white
        self.textFieldBeingEdited?.inputView = self
               
        self.pickerAccessory = UIToolbar()
        self.pickerAccessory?.autoresizingMask = .flexibleHeight

        self.pickerAccessory?.barStyle = .default
        self.pickerAccessory?.barTintColor = .red
        self.pickerAccessory?.backgroundColor = .red
        self.pickerAccessory?.isTranslucent = false
        var frame = pickerAccessory?.frame
        frame?.size.height = 44.0
        self.pickerAccessory?.frame = frame ?? CGRect()
               
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBtnClicked(_:)))
               cancelButton.tintColor = .white
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneBtnClicked(_:)))
        doneButton.tintColor = .white
        
        self.pickerAccessory?.items = [cancelButton, flexSpace, doneButton]
               
        self.textFieldBeingEdited?.inputAccessoryView = pickerAccessory
    }
    
    @objc func cancelBtnClicked(_ button: UIBarButtonItem?) {
        textFieldBeingEdited?.resignFirstResponder()
    }

    
    @objc func doneBtnClicked(_ button: UIBarButtonItem?) {
        textFieldBeingEdited?.resignFirstResponder()
        textFieldBeingEdited?.text = selectedValue
    }
}

extension PokePicker : UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let data = data{
            return data.count
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data?[row]
    }
}
