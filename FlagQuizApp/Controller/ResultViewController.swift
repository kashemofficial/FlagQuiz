//
//  ResultViewController.swift
//  FlagQuizApp
//
//  Created by User on 22/7/22.
//

import UIKit

class ResultViewController: UIViewController {
    var parsentice: Float?
    @IBOutlet weak var resultStatusLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let parsentice = parsentice else {return}
        

        if parsentice >= 80.0 {
            resultStatusLabel.text = "Congratulations"
            resultStatusLabel.textColor = .green
            suggestionLabel.text = "We appreciate your hard work"
        }else{
            resultStatusLabel.text = "Opps......"
            resultStatusLabel.textColor = .red
            suggestionLabel.text = "You should prectice more"
        }

        
    }
    // MARK: - ButtonAction
    @IBAction func tryAgainButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
        print("dismiss")
        
    }
    
    // MARK: - UpdateUI
    
    func UpdateUI(){
        
            }

}
