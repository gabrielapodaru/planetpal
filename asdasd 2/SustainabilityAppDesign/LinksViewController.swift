//
//  LinksViewController.swift
//  SustainabilityAppDesign
//
//  Created by Podaru, Maria-Gabriela on 20/04/2023.
//

import UIKit

class LinksViewController: UIViewController {
    
    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBOutlet weak var goToLink: UITextView!
    
    
    @IBOutlet weak var link2: UITextView!
    
    @IBOutlet weak var link3: UITextView!
    
    
    func textView(_ goToLink: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
            UIApplication.shared.open(URL)
            return false
        }
    
    override func viewDidLoad() {
        
        //method to display the links we have for each category
        if allLinks.0 == "Home" {
            let attributedString = NSMutableAttributedString(string: "9 Ways to be more sustainable at home")
            attributedString.addAttribute(.link, value: allLinks.1, range: NSRange(location: 0, length: 37))
            
            goToLink.attributedText = (attributedString)
            
            let attributedString2 = NSMutableAttributedString(string: "10 Ways to Make Your Home More Sustainable")
            attributedString2.addAttribute(.link, value: allLinks.2, range: NSRange(location: 0, length: 42))
            
            link2.attributedText = attributedString2
            
            let attributedString3 = NSMutableAttributedString(string: "40 Ways to Be More Eco Friendly in 2023")
            attributedString3.addAttribute(.link, value: allLinks.3, range: NSRange(location: 0, length: 39))
            
           link3.attributedText = attributedString3
            
        }
        
        if allLinks.0 == "Food" {
            let attributedString = NSMutableAttributedString(string: "Tips to help you eat more sustainably")
                attributedString.addAttribute(.link, value: allLinks.1, range: NSRange(location: 0, length: 37))
            
            goToLink.attributedText = attributedString
            
            let attributedString2 = NSMutableAttributedString(string: "5 tips for sustainable eating")
            attributedString2.addAttribute(.link, value: allLinks.2, range: NSRange(location: 0, length: 29))
            
            link2.attributedText = attributedString2
            
            let attributedString3 = NSMutableAttributedString(string: "7 Tips to Make Your Eating Habits More Sustainable")
            attributedString3.addAttribute(.link, value: allLinks.3, range: NSRange(location: 0, length: 50))
            
           link3.attributedText = attributedString3
        }
        
        if allLinks.0 == "Travel" {
            let attributedString = NSMutableAttributedString(string: "Responsible travel")
            attributedString.addAttribute(.link, value: allLinks.1, range: NSRange(location: 0, length: 18))
            
            goToLink.attributedText = attributedString
            
            let attributedString2 = NSMutableAttributedString(string: "7 Tips to Make Your Eating Habits More Sustainable")
            attributedString2.addAttribute(.link, value: allLinks.2, range: NSRange(location: 0, length: 50))
            
            link2.attributedText = attributedString2
            
            let attributedString3 = NSMutableAttributedString(string: "How to Travel Sustainably in 2023 (and Beyond)")
            attributedString3.addAttribute(.link, value: allLinks.3, range: NSRange(location: 0, length: 46))
            
           link3.attributedText = attributedString3
            
            super.viewDidLoad()
        }
        
        

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
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLinks" {
            
            }
            
        }*/

}
