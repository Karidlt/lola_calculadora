//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by alumno on 30-08-24.
//

import UIKit

enum estados_de_la_calculadora {
    case seleccionar_numeros
    case escoger_operacion
    case mostrar_resultado
}
 
class ViewController: UIViewController {
    var estado_actual: estados_de_la_calculadora = estados_de_la_calculadora.seleccionar_numeros
    
    @IBOutlet weak var texto_a_cambiar: UILabel!
    @IBOutlet weak var boton_operacion: UIButton!
    //  @IBOutlet weak var BOTONES: UIStackView!
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    var operacion_actual: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_calculadora()
    }
    
    /// <#Description#>
    /// - Parameter sender: <#sender description#>
    @IBAction func que_hacer_puchar_boton(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            
            // TODO: Arreglar glitch del text quitando el optional
            let text_a_añadir = botones_interfaz[(sender.restorationIdentifier ?? boton_operacion.restorationIdentifier) ?? "boton"]?.numero
            texto_a_cambiar.text = "\(texto_a_cambiar.text ?? "")\(text_a_añadir!)"
        }
        else if (estado_actual == estados_de_la_calculadora.escoger_operacion){
            if let _mensajero: UIButton = sender{
                operacion_actual = botones_interfaz[_mensajero!.restorationIdentifier?? "boton_0"]?.operacion
            }
            else{
                operacion_actual = nil
            }
             
        }
    }
    
    @IBAction func boton_escoger_operacion(_ sender: UIButton){
        if (estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            estado_actual = estados_de_la_calculadora.escoger_operacion
            dibujar_numero_u_operaciones_en_interfaz()
        }
    }
    
    func inicializar_calculadora() -> Void{
        crear_arreglo_botones()
    }
    
    func crear_arreglo_botones() -> Void {
        
        botones_interfaz = IUBotonCalculadora.crear_arreglo_botones()
        
    }
    
    func  dibujar_numero_u_operaciones_en_interfaz(){
        if(estado_actual == estados_de_la_calculadora.escoger_operacion){
            
        }
        else if (estado_actual == estados_de_la_calculadora.seleccionar_numeros){
        }
        
    }
}
