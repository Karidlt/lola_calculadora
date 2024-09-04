//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by alumno on 30-08-24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boton_para_interactuar: UIButton!
    
    @IBOutlet weak var texto_a_cambiar: UILabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func que_hacer_puchar_boton(_ sender: UIButton) {
        texto_a_cambiar.text = sender.titleLabel!.text ?? "NOsupe"
       // boton_para_interactuar.
    }
}

