//
//  ViewController.swift
//  contact
//
//  Created by Yusıf Aqakerımov on 21.09.24.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var nametext: UITextField!
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var add: UIButton!
    var list: [namemodel] = []
  

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
       
    }

    @IBAction func addbutton(_sender: Any){
        let controller = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "addController") as? addController ?? addController()
               controller.addclicked = { [weak self] newName in
                   self?.list.append(newName)
                   self?.table.reloadData() 
               }
               
            self.navigationController?.pushViewController(controller, animated: true)
           }
       }




extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! nameCell
        let item = list[indexPath.row]
        cell.configurcell(model: item)
        return cell
    }
     
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
