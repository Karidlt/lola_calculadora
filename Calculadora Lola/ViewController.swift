//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by alumno on 30-08-24.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet weak var boton_para_interactuar: UIButton!
    
    @IBOutlet weak var texto_a_cambiar: UILabel!
    @IBOutlet weak var boton operacion: UILabel!
    

    var botones_interfaz: Dictionary<String, IUBotonCalculadora>
    
  // V2:  var botones_interfaz: Array<IUBotonCalculadora> = []
    override func viewDidLoad() {
        super.viewDidLoad()
      
        inicializar_calculadora()
    }
    
    
    @IBAction func que_hacer_puchar_boton(_ sender: UIButton) {
        //  texto_a_cambiar.text = sender.titleLabel!.text ?? "NOsupe"
        /*   print(sender.restorationIdentifier)
         texto_a_cambiar.text = texto_a_cambiar.text + sender.restorationIdentifier
         */
        // boton_para_interactuar.titleLbel
     /*V2:   for boton in botones_interfaz{
            if(boton.restorationID == sender.restorationIdentifier){
                print(boton.numero)
            }*/
        let text_a_añadir =
        botones_interfaz[sender.restorationIdentifier}
        }
    }
    
    func inicializar_calculadora() -> Void{
        crear_arreglo_botones()
    }
    
    func crear_arreglo_botones() -> Void{
        for numero in 0...9{
            botones_interfaz["boton_\(numero)"] = IUBotonCalculadora(
                    "boton_\(numero)",
                    numero: Character("\(numero)"),
                    operacion: ""
        }
    }
}

