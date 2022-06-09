//
//  MenuVC.swift
//  cornerMentor
//
//  Created by MACBOOK PRO on 06/06/22.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var tabla: UITableView!
    let arrMaterias = ["Matematicas" ,"Idiomas" ,"Computacion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indice = tabla.indexPathForSelectedRow?.row
        let materia = arrMaterias[indice!]
        let vc = segue.destination as! SubMateriasVC
        vc.nombreMateria = materia
        
    }
   
}
//Extensiòn
extension MenuVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMaterias.count // valores que tiene el arreglo
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let renglon = indexPath.row
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias", for: indexPath)
        
        celda.textLabel?.text = arrMaterias[renglon]
        celda.layer.cornerRadius = 20
        celda.layer.borderWidth = 2
        celda.layer.borderColor = UIColor.lightGray.cgColor
        return celda
    }
}

