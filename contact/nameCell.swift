//
//  nameCell.swift
//  contact
//
//  Created by Yusıf Aqakerımov on 21.09.24.
//

import UIKit

class nameCell: UITableViewCell {
    @IBOutlet weak var namelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    func configurcell(model: namemodel){
        namelabel.text = model.name
    }
}
