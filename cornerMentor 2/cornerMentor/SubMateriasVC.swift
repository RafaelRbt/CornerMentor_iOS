//
//  SubMateriasVC.swift
//  cornerMentor
//
//  Created by MACBOOK PRO on 06/06/22.
//

import UIKit

class SubMateriasVC: UIViewController {

    @IBOutlet weak var tablaSub: UITableView!
    @IBOutlet weak var lblMateria: UILabel!
    let arrSubMaterias = ["Matematicas 1" ,"Matematicas II" ,"Matematicas III", "Matematicas III", "Programacion Orientada a Objetos", "Fundamentos de programacion", "Proyecto de desarrollo de aplicaciones moviles", "Remedial I", "Remedial II", "Remedial III"]
    public var nombreMateria: String = " " //recibe el nombre de la materia del controlador previo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMateria.text = nombreMateria
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indice = tablaSub.indexPathForSelectedRow?.row
        let subMateria = arrSubMaterias[indice!]
        let vc = segue.destination as! MaestrosVC
        
        vc.nombreSubMateria = subMateria
      
    }
}
//Extensiòn
extension SubMateriasVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSubMaterias.count // valores que tiene el arreglo
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let renglon = indexPath.row
        let celda = tableView.dequeueReusableCell(withIdentifier: "SubMaterias", for: indexPath)
        celda.textLabel?.text = arrSubMaterias[renglon]
        return celda
    }
}
