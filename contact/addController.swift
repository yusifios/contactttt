//
//  addController.swift
//  contact
//
//  Created by Yusıf Aqakerımov on 21.09.24.
//

import UIKit

class addController: UIViewController {
    
    @IBOutlet weak var addbutton: UIButton!
    @IBOutlet weak var addname: UITextField!
    var addclicked: ((namemodel)-> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    
    @IBAction func addbutton(_sender: Any){
        guard let  add = addname.text else{return}
        let newname = namemodel(name: add)
        addclicked?(newname)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
