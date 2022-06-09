//
//  MaestrosVC.swift
//  cornerMentor
//
//  Created by MACBOOK PRO on 06/06/22.
//

import UIKit

class MaestrosVC: UIViewController {
    @IBOutlet weak var lblSubMateria: UILabel!
    @IBOutlet weak var tablaMaestros: UITableView!
    public var nombreSubMateria: String = " "
    let arrMaestros = ["Jose Luis Mata: Jueves 14:00 hrs", "Jose Luis Mata : Lunes 16:00 hrs", "Humberto Carrillo: Miercoles 16:00 hrs", "Humberto Carrillo: Viernes 17:00 hrs" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSubMateria.text = nombreSubMateria
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indice = tablaMaestros.indexPathForSelectedRow?.row
        let maestros = arrMaestros[indice!]
        let vc = segue.destination as! ConfirmacionVC
        vc.nombreMaestro = maestros
    }

}
//Extensiòn
extension MaestrosVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMaestros.count // valores que tiene el arreglo
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let renglon = indexPath.row
        let celda = tableView.dequeueReusableCell(withIdentifier: "maestrosTabla", for: indexPath)
        celda.textLabel?.text = arrMaestros[renglon]
        celda.layer.cornerRadius = 20
        celda.layer.borderWidth = 2
        celda.layer.borderColor = UIColor.lightGray.cgColor
        return celda
    }
}

