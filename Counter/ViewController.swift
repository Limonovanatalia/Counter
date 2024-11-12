//
//  ViewController.swift
//  Counter
//
//  Created by natalia.limonova on 08.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    @IBOutlet weak var textChangeLabel: UILabel!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        change()
        textChangeLabel.tintColor = .lightGray
        textChangeLabel.textColor = .blue
        plusButton.tintColor = .red
        minusButton.tintColor = .blue
        }
    func change () {
        textChangeLabel.text = "ЗНАЧЕНИЕ СЧЁТЧИКА: \(counter)"
       }
    @IBAction func buttonDidTap(_ sender: Any) {
        print("Нажатие")
        counter += 1
        change()
    }
    @IBAction func minusCountButton(_ sender: Any) {
        if counter > 0 {counter -= 1}
        change()
    }


}
    


