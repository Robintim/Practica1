//
//  Enums.swift
//  Practica1
//
//  Created by Daniel Alberto Vazquez Rodriguez on 8/8/20.
//  Copyright © 2020 Daniel Alberto Vazquez Rodriguez. All rights reserved.
//

import Foundation

enum PokemonType : String {
    
    case fire = "fuego"
    case water = "agua"
    case green = "planta"
    
    static func getArray() -> [String]{
        return [fire.rawValue.capitalized, water.rawValue.capitalized, green.rawValue.capitalized]
    }
}
