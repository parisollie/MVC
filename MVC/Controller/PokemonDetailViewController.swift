//
//  PokemonDetailViewController.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 29/07/23.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    let dataManager = PokemonDataManager()
    var selectedPokemon : Pokemon?
    
    @IBOutlet weak var nombrepok: UILabel!
    
    
    @IBOutlet weak var imagenpok: UIImageView!
    
    @IBOutlet weak var habilidadpok: UILabel!
    
    
    //Es el pokemon que recibimos de nuestro otro controlador
    var receivedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        nombrepok.text = receivedPokemon?.name
        imagenpok.image = UIImage(named: receivedPokemon!.image)
        habilidadpok.text = receivedPokemon?.move
     
    }
    
    
    
}








