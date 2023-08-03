//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 29/07/23.
//

import Foundation


class PokemonDataManager{
    
    //data source array :P
        let pokemonsArray = [
            ["image":"0", "name": "Wartortle","move":"Mov: Cascada"],
            ["image":"1", "name": "Bulbasaur","move":"Mov: Latigo Sepa"],
            ["image":"2", "name": "Blastoise","move":"Mov: Hidrobomba"],
            ["image":"3", "name":"Butterfree","move":"Mov: Paralizador"],
            ["image":"4", "name":"Ivysaur","move":"Mov: Hojas navajas"],
            ["image":"5", "name":"Jigglypuf","move":"Mov: Canto"],
            ["image":"6", "name":"Charmander","move":"Mov: Lanzallamas"],
            ["image":"7", "name":"Meowth","move":"Mov: Dìa de pago"],
            ["image":"8", "name":"Alakazam","move":"Mov: Telequinesis"],
            ["image":"9", "name":"Pidgey","move":"Mov: Ataque ala"],
            ["image":"10", "name":"Raichu","move":"Mov: Rayo"],
            ["image":"11", "name":"Rattata","move":"Mov: Mordida"],
            ["image":"12", "name":"Vaporeon","move":"Mov: Chorro de agua"],
            ["image":"13", "name":"Jynx","move":"Mov: Puño hielo"],
            ["image":"14", "name":"Venusaur","move":"Mov: Rayo solar"],
            ["image":"15", "name":"Vulpix","move":"Mov: Fuego fatuo"],
            ["image":"16", "name":"Slowbro","move":"Mov: Rayo hIelo"],
            ["image":"17", "name":"Dewgong","move":"Mov: Rayo aurora"],
            ["image":"18", "name":"Spearow","move":"Mov: Ataque rápido"],
            ["image":"19", "name":"Wigglytuff","move":"Mov: Doble cachetada"],
            ["image":"20", "name":"Scyther","move":"Mov: Falso tortazo"],
            ["image":"21", "name":"Golduk","move":"Mov: Viento hielo"],
            ["image":"22", "name":"Lapras","move":"Mov: Fosilizacion"],
            ["image":"23", "name":"Sandshrew","move":"Mov: Ataque arena"]
    ]
    
    private var pokemons : [Pokemon] = []
    //Metodo para recuperar nuestros pokemons
    func fetch() {
        for pokemon in pokemonsArray{
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    //Recibe el indice de nuestro pokemon
    func getPokemon(at index: Int ) ->Pokemon {
        return pokemons[index]
    }
    //Mtódo para saber cuantos pokemon tenemos disponibles
    func countPokemons() -> Int {
        return pokemons.count
    }
}
