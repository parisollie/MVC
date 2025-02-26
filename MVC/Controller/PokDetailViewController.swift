//
//  PokDetailViewController.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 01/08/23.
//

import UIKit

class PokDetailViewController: UIViewController {

    var receivedPokemon : Pokemon?
    override func viewDidLoad() {
        super.viewDidLoad()

        nombre.text = receivedPokemon?.name
         
        //imagen.image = UIImage(named: "pokemon")
         
         
         habilidad.text = receivedPokemon?.move
    }
    


}
