//
//  PokeformTableViewController.swift
//  Practica1
//
//  Created by Daniel Alberto Vazquez Rodriguez on 8/7/20.
//  Copyright © 2020 Daniel Alberto Vazquez Rodriguez. All rights reserved.
//

import UIKit

class PokeformTableViewController: UITableViewController {
    
    @IBOutlet weak var txfPokemonName: UITextField!
    @IBOutlet weak var txfNationalNumber: UITextField!
    @IBOutlet weak var txfType1: UITextField!
    @IBOutlet weak var txfType2: UITextField!
    
    private let arrOptions = ["Cadena 1", "Cadena 2", "Cadena 3"]
    private var pokePickerType1 : PokePicker?
    private var pokePickerType2 : PokePicker?
    private var pickerAccessory: UIToolbar?
    private var pickerAccessory2: UIToolbar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preparePickers()
    }
    
    private func preparePickers(){
        pokePickerType1 = PokePicker(textField: txfType1)
        pokePickerType1?.data = arrOptions
        pokePickerType2 = PokePicker(textField: txfType2)
        pokePickerType2?.data = arrOptions
    }
    
    //MARK: - Action methods
    @IBAction func savePokemon(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func cancelBtnClicked(_ button: UIBarButtonItem?) {
        txfType1?.resignFirstResponder()
    }

    
    @objc func doneBtnClicked(_ button: UIBarButtonItem?) {
        txfType1?.resignFirstResponder()
        txfType1?.text = pokePickerType1?.selectedValue
    }
}
