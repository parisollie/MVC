//
//  PokemonViewController.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 29/07/23.
//

import UIKit

class PokemonViewController: UIViewController{
    
    let dataManager = PokemonDataManager()
    //Para cuando seleccinemos nuestro pokemon que es de esta estructura
    var selectedPokemon : Pokemon?

    
    @IBOutlet weak var pknTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Llamamos al metódo fetch de PokemonDataManager para recuperar nuestros pokemons
        dataManager.fetch()
        //Revisando que haya datos
        /*print(dataManager.countPokemons())
        //Para ver que haya datos
        var i = 0
        while i < dataManager.countPokemons(){
            print(dataManager.getPokemon(at:i))
            i += 1
        }*/
    }
    //MARK: Método x
}



//Metemos una extension para manejar nuestras tablas,necesitamos un delegate y un datasource
extension PokemonViewController : UITableViewDataSource,UITableViewDelegate{
    //Regresa el numero de secciones en una seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Para sacar el numero de pokemons
        return dataManager.countPokemons()
    }
    
    //Este metodo devuelve una celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Mi celdas
        ////hacemos un cast como POkemon cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! POKEMONCell
        //Llenamos los datos de la celda tipo Pokemon CEll
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        //a esta celda le ponemos valores a sus propiedades
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.pokemonLabel.text = pokemon.name
        return cell
      
    }
    
    /*
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemons"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.init(60.0)
    }*/
    
    
    //Extensiones
    
    //Nuestros metódos
    //Para ponerle nuestra imagen de pokemn en la parte de arriba
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView.init(image: UIImage(named: "Pokemon"))
    }
    //Cuando cacha el pokemon que seleccionamos
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected:",indexPath.row)
        //aqui disparamos nuestro segue y el pokemon que seleccionamos
        selectedPokemon = dataManager.getPokemon(at: indexPath.row)
        
        //self.self, el sender es el tipo de controlador 
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    //Sobreescribimos un metódo para el segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Agregamos quien es el destino, en nuestro caso es el Pokemon VIew Detail controler
        let destination = segue.destination as! PokemonDetailViewController
        //Agreagamos la propiedad de nuestro destino, el pokemon que se selecciono.
        destination.receivedPokemon = selectedPokemon
        
    }
    
    
    
}
