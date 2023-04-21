//
//  CarbonFootprintViewController.swift
//  SustainabilityAppDesign
//
//  Created by Gabriela Podaru on 17/04/2023.
//

import UIKit

class CarbonFootprintViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var selectedVal: Double?
    

    
    @IBOutlet weak var getDistance: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var displayCarbonFootprint: UILabel!
    
    let vehicleOptions = ["Bus", "Plane", "Motorbike", "Train", "Bike", "Walking", "Car (Gasoline)", "Car (Diesel)"]
    let carbonFootprint = [0: 0.17, 1: 1.26, 2: 1.13, 3: 0.37, 4: 0, 5: 0, 6: 0.25, 7: 0.24]
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        guard let distString = getDistance.text,
              let distVal = Double(distString)
        else {
            print("Invalid input")
            return
        }
        
        if selectedVal == 0 {
            let emission = 0.00
            displayCarbonFootprint.text = "The CO2e for your trip is = \(emission) kgCO2e"
           
        } else {
            let emission = distVal / (selectedVal ?? 0.17)
            displayCarbonFootprint.text = "The CO2e for your trip is = \(String(format: "%.2f", emission)) kgCO2e"
            
        }
        
        getDistance.text = ""
        
        
    
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfComponents(in transportationPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->Int {
        return vehicleOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return vehicleOptions[row]
        
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent  component: Int) {
        selectedVal = carbonFootprint[row]
        
        
    
    }

  

}
