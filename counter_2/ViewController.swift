//
//  ViewController.swift
//  counter_2
//
//  Created by Максим Петров on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var console: UITextView!
    @IBOutlet weak private var result: UILabel!
    @IBOutlet weak private var reset: UIButton!
    @IBOutlet weak private var minus: UIButton!
    @IBOutlet weak private var plus: UIButton!
    
    
   
    var value = 0
    private func incrementCounter(){
        value += 1
        result.text = String(value)
        console.text += "\n[\(NSDate())]: значение изменено на +1"
    }
    private func decrementCounter(){
        if value == 0{
            result.text = String(value)
            console.text += "\n[\(NSDate())]: попытка уменьшить значение счётчика ниже 0"
        }else if value > 0{
            value -= 1
            result.text = String(value)
            console.text += "\n[\(NSDate())]: значение изменено на -1"
        }
    }
    private func resetCounter(){
        value = 0
        result.text = String(value)
        console.text += "\n[\(NSDate())]: значение сброшено"
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction private func increment(_ sender: Any) {
        incrementCounter()
        
    }
    
    @IBAction private func decrement(_ sender: Any) {
        decrementCounter()
        
    }
    
    @IBAction private func reset(_ sender: Any) {
        resetCounter()
        
    }
}
 
