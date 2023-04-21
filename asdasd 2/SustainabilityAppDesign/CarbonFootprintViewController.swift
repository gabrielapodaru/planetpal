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
    
    //array to save the options we have chosen for transportation
    let vehicleOptions = ["Bus", "Plane", "Motorbike", "Train", "Bike", "Walking", "Car (Gasoline)", "Car (Diesel)"]
    //dictionary to save the index of the CO2e per mile for each option
    let carbonFootprint = [0: 0.17, 1: 1.26, 2: 1.13, 3: 0.37, 4: 0, 5: 0, 6: 0.25, 7: 0.24]
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        
        //when pressing the button "calculate" get the text insertted in the textfield
        guard let distString = getDistance.text,
              let distVal = Double(distString)
        else {
            print("Invalid input")
            return
        }
        
        //if the selected value from the carbonFootprint has value "0" then the emission is also 0
        if selectedVal == 0 {
            let emission = 0.00
            displayCarbonFootprint.text = "The CO2e for your trip is = \(emission) kgCO2e"
           
        } else {
            //equation to calculate co2e
            let emission = distVal / (selectedVal ?? 0.17)
            displayCarbonFootprint.text = "The CO2e for your trip is = \(String(format: "%.2f", emission)) kgCO2e"
            
        }
        
        //make the textfield empty so the user can enter new value
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
        //return as many values in the picker as there are options of transportation
        return vehicleOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //each row in the picker displays the transportation option at that specific index
        return vehicleOptions[row]
        
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent  component: Int) {
        //the selected value is value at the row index
        selectedVal = carbonFootprint[row]
        
    }

  

}
