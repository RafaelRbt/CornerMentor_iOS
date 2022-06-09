//
//  ConfirmacionVC.swift
//  cornerMentor
//
//  Created by MACBOOK PRO on 07/06/22.
//

import UIKit

class ConfirmacionVC: UIViewController {
    
    @IBOutlet weak var lblMaestro: UILabel!
    public var nombreMaestro: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblMaestro.text = nombreMaestro

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
