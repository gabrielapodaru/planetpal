//
//  DetailViewController.swift
//  SustainabilityAppDesign
//
//  Created by Podaru, Maria-Gabriela on 20/04/2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var timesLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    var selectedCentre: String = ""
    
    var centre_names = ["Gaskells Waste Services","Recycling Lives", "Old Swan Household Waste Recycling Centre", "South Sefton Recycling Centre", "West Kirby Recycling Centre","Bidston Recycling Centre"]
    var cities = ["Bridgewater Street, Liverpool L1 0AR, United Kingdom", "Gillmoss Recycling Park, Bridgehouse Lane, Liverpool L10 5HA, United Kingdom", "Cheadle Avenue, Liverpool L13 3AF, United Kingdom", "Irlam Road, Bootle L20 4AE, United Kingdom", "Greenbank Road, West Kirby, Wirral CH48 5HH, United Kingdom", "Wallasey Bridge Road, Birkenhead, Wirral CH41 1EB, United Kingdom"]
    var times = ["Monday-Friday: 8.30am - 5.30pm, Saturday: 8.30 - 2pm, Sunday: closed", "Monday-Thursday: 8am - 5pm, Froday: 8am - 4:30pm, Saturday: 8am - 12pm, Sunday: Closed", "Monday-Sunday: 8am-8pm", "Monday-Sunday: 8am-8pm", "Monday-Sunday: 8am-8pm", "Monday-Sunday: 8am-8pm"]
    var reviews = ["2.7 Stars", "4.4 Stars", "4.5 Stars", "4.4 Stars", "4.1 Stars", "4.3 Stars"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (selectedCentre == centre_names[0]) {
            nameLabel.text = centre_names[0]
            addressLabel.text = cities[0]
            timesLabel.text = times[0]
            reviewsLabel.text = reviews[0]
        } else if (selectedCentre == centre_names[1]) {
            nameLabel.text = centre_names[1]
            addressLabel.text = cities[1]
            timesLabel.text = times[1]
            reviewsLabel.text = reviews[1]
        } else if (selectedCentre == centre_names[2]) {
            nameLabel.text = centre_names[2]
            addressLabel.text = cities[2]
            timesLabel.text = times[2]
            reviewsLabel.text = reviews[2]
        }else if (selectedCentre == centre_names[3]) {
            nameLabel.text = centre_names[3]
            addressLabel.text = cities[3]
            timesLabel.text = times[3]
            reviewsLabel.text = reviews[3]
        }else if (selectedCentre == centre_names[4]) {
            nameLabel.text = centre_names[4]
            addressLabel.text = cities[4]
            timesLabel.text = times[4]
            reviewsLabel.text = reviews[4]
        }else if (selectedCentre == centre_names[5]) {
            nameLabel.text = centre_names[5]
            addressLabel.text = cities[5]
            timesLabel.text = times[5]
            reviewsLabel.text = reviews[5]
        }

        // Do any additional setup after loading the view.
    }
    

    

}
