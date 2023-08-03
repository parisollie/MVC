//
//  Pokemon.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 29/07/23.
//

import Foundation
//Estructura para guardar la información que vamos a recibir de un diccionario.

struct Pokemon {
    //Nuestras propiedades
    let name: String
    let image: String
    let move: String
    
    
    //Nuestro inicializador personalizado,capturamos los valores de nuestra estructura
    //que vienen de nuestro diccionario.
    init(dict : [String : String]) {
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.move = dict["move"]!
    }
}
