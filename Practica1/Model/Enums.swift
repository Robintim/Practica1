//
//  Enums.swift
//  Practica1
//
//  Created by Daniel Alberto Vazquez Rodriguez on 8/8/20.
//  Copyright © 2020 Daniel Alberto Vazquez Rodriguez. All rights reserved.
//

import Foundation

enum PokemonType : String {
    
    case normal = "normal"
    case fighting = "lucha"
    case flying = "volador"
    case poison = "veneno"
    case ground = "tierra"
    case rock = "roca"
    case bug = "bicho"
    case ghost = "fantasma"
    case steel = "acero"
    case fire = "fuego"
    case water = "water"
    case grass = "planta"
    case electric = "eléctrico"
    case psychic = "psíquico"
    case ice = "hielo"
    case dragon = "dragón"
    case dark = "siniestro"
    case fairy = "hada"
    case noType = "????"
    
    static func getArrayTypes () -> [String]{
        return [normal.rawValue.capitalized, fighting.rawValue.capitalized, flying.rawValue.capitalized, poison.rawValue.capitalized, ground.rawValue.capitalized, rock.rawValue.capitalized, bug.rawValue.capitalized, ghost.rawValue.capitalized, steel.rawValue.capitalized, fire.rawValue.capitalized,water.rawValue.capitalized, grass.rawValue.capitalized, electric.rawValue.capitalized, psychic.rawValue.capitalized, ice.rawValue.capitalized, dragon.rawValue.capitalized, dark.rawValue.capitalized, fairy.rawValue.capitalized]
    }
}
