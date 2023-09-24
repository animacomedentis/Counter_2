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
    // функция форматирующая дату
    private func date() -> String{
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM/d yyyy, HH:mm "
        return dateFormatter.string(from: currentDate)
    }
    var value = 0
    // функция увеличивает счетчик на 1 и выводит в сообщение на экран приложения
    private func incrementCounter(){
        value += 1
        result.text = String(value)
        console.text += "\n[\(date())]: значение изменено на +1"
    }
    // функция уменьшает счетчик на 1, если оно больше 0 и выводит в сообщение на экран приложения
    private func decrementCounter(){
        if value == 0{
            result.text = String(value)
            console.text += "\n[\(date())]: попытка уменьшить значение счётчика ниже 0"
        }else if value > 0{
            value -= 1
            result.text = String(value)
            console.text += "\n[\(date())]: значение изменено на -1"
        }
    }
    // функция сбрасыват счетчик и выводит соответсвующее сообщение
    private func resetCounter(){
        value = 0
        result.text = String(value)
        console.text += "\n[\(date())]: значение сброшено"
    }
    //функция scroll для окна истории обновлений
    private func scroll(){
        let range = NSRange(location: -1, length: 1)
        console.scrollRangeToVisible(range)
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction private func increment(_ sender: Any) {
        incrementCounter()
        scroll()
    }
    
    @IBAction private func decrement(_ sender: Any) {
        decrementCounter()
        scroll()
    }
    
    @IBAction private func reset(_ sender: Any) {
        resetCounter()
        scroll()
    }
}
 
