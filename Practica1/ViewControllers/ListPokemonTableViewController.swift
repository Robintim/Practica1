//
//  ListPokemonTableViewController.swift
//  Practica1
//
//  Created by Daniel Alberto Vazquez Rodriguez on 8/7/20.
//  Copyright © 2020 Daniel Alberto Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ListPokemonTableViewController: UITableViewController {
    
    //MARK: - Action methods
    @IBAction func addPokemon(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "SegueFromListPokemonTVCToPokeformTVC", sender: self)
    }
}
