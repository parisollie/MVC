//
//  POKEMONCell.swift
//  MVC
//
//  Created by Paul Jaime Felix Flores on 29/07/23.
//

import UIKit

class POKEMONCell: UITableViewCell {
    //Le ponemos los atributos de nuestra imagen y label
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    @IBOutlet weak var pokemonImage: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
