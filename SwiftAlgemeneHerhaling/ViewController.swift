//
//  ViewController.swift
//  SwiftAlgemeneHerhaling
//
//  Created by mobapp15 on 24/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bedragTF: UITextField!
    @IBOutlet weak var tariefSC: UISegmentedControl!
    @IBOutlet weak var resultaatTF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func berekenBtn() {
        // vind de waarde in het invulveld
        let inputValue = bedragTF!.text!
        
        // is er niks ingevuld, geef dan een alert weer om de gebruiker te verwittigen
        if inputValue.count > 0 {
            let bedrag = Float.init(inputValue)
            var tarief:Float?
            switch(tariefSC.selectedSegmentIndex){
            case 0:  tarief = 1.06
            case 1:  tarief = 1.12
            default: tarief = 1.21
            }
            resultaatTF.text = String(format: "€%.2f", bedrag! * tarief!)
            bedragTF.resignFirstResponder()
        } else {
            let alert = UIAlertController.init(
                title: "Geen waarde",
                message: "Er is geen waarde ingegeven voor het bedrag dat je wil berekenen. Gelieve dit eerst in te vullen.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction.init(
                title: "Ok",
                style: .default,
                handler: nil)
            )
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    @IBAction func tappedOustideTextField() {
        bedragTF.resignFirstResponder()
    }
    
}

