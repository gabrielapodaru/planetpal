//
//  HowToBeViewController.swift
//  SustainabilityAppDesign
//
//  Created by Gabriela Podaru on 17/04/2023.
//

import UIKit
var allLinks = ("", "", "", "")

class HowToBeViewController: UIViewController {
    

    @IBOutlet weak var atHome: UITextView!
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        
    }
    
    //the links we have for home
    
    @IBAction func atHomeLearnHow(_ sender: Any) {
        allLinks = ("Home", "https://onetreeplanted.org/blogs/stories/sustainable-at-home", "https://www.fmb.org.uk/resource/10-ways-to-make-your-home-more-sustainable.html", "https://www.greenmatch.co.uk/blog/how-to-be-more-eco-friendly")
        performSegue(withIdentifier: "toLinks", sender: self)
    }
    
    @IBOutlet weak var food: UITextView!
    
    //the links we have for food
    @IBAction func foodLearnHow(_ sender: Any) {
        allLinks = ("Food", "https://www.wwf.org.uk/updates/six-tips-help-you-eat-more-sustainably", "https://www.hsph.harvard.edu/nutritionsource/2015/06/17/5-tips-for-sustainable-eating/", "https://www.everydayhealth.com/diet-nutrition/tips-to-make-your-eating-habits-more-sustainable/" )
        performSegue(withIdentifier: "toLinks", sender: self)
    }
    
    @IBOutlet weak var driving: UITextView!
    
    //the links we have for transportation
    @IBAction func drivingLearnHow(_ sender: Any) {
        allLinks = ("Travel", "https://friendsoftheearth.uk/climate-change/responsible-travel", "https://sustainabletravel.org/top-10-tips-for-sustainable-travel/", "https://www.goabroad.com/articles/sustainable-travel-tips")
        performSegue(withIdentifier: "toLinks", sender: self)
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
       //setting the fond
       atHome.font = UIFont(name: "DIN Alternate Bold", size: 16)
       food.font = UIFont(name: "DIN Alternate Bold", size: 16)
       driving.font = UIFont(name: "DIN Alternate Bold", size: 16)
        
       //setting the label text
        atHome.text = "Be More Sustainable at Home \n \nGROW A HOME GARDEN \nIt’s easier than it looks! Simply plant a few seeds in a corner of your yard — or, if you’re an apartment-dweller, on your porch or windowsill."

        food.text = "Be More Sustainable with Food \n \nCUT THE WASTE \nReducing waste in your household is simple: freeze anything you can’t eat while it’s fresh and, where possible, buy loose produce so you can select the exact amount that you need."
        
        driving.text = "Travel More Sustainably \n \nTAKE THE TRAIN \nTrain journeys are much better for the climate than short-haul flights. Book well in advance for the cheapest fares."
        
        
        // Do any additional setup after loading the view.
    }
    
   
}
