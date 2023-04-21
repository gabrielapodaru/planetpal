//
//  MenuViewController.swift
//  SustainabilityAppDesign
//
//  Created by Gabriela Podaru on 17/04/2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBAction func goToFood(_ sender: Any){
        performSegue(withIdentifier: "toFood", sender: self)
    }
    
    @IBAction func goToCarbon(_ sender: Any){
        performSegue(withIdentifier: "toCarbon", sender: self)
    }
    
    @IBAction func goToLearnMore(_ sender: Any){
        performSegue(withIdentifier: "toLearnMore", sender: self)
    }
    
    @IBAction func goToCentres(_ sender: Any){
        performSegue(withIdentifier: "toCentres", sender: self)
    }
    @IBAction func goToRewards(_ sender: Any){
        performSegue(withIdentifier: "toRewards", sender: self)
    }
    
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
