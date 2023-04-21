//
//  FoodFootprintViewController.swift
//  SustainabilityAppDesign
//
//  Created by Gabriela Podaru on 17/04/2023.
//

import UIKit

struct PickerModel {
    let option: String
    let names: [String]
}

let pickers: [PickerModel] = [
    PickerModel(option: "Popular food", names: ["Beef (beef herd)", "Lamb", "Cheese", "Beef (dairy herd)", "Chocolate", "Coffee", "Prawns", "Palm Oil", "Pig Meat", "Poultry Meat", "Olive Oil", "Fish (farmed)", "Eggs", "Rice", "Fish (wild catch)", "Milk", "Cane Sugar", "Groundnuts", "Wheat & Rye", "Tomatoes", "Maize", "Cassava", "Soymilk", "Peas", "Bananas", "Root Vegetables", "Apples", "Citrus Fruit", "Nuts"]),
    PickerModel(option: "Popular meal deal mains", names: ["Prawn Mayo", "BLT", "Ham & Cheese", "Chicken & Bacon", "Ham", "All Day Breakfast", "Cheese & Onion","Egg & Bacon", "Egg", "Chicken Club", "Tuna Mayo", "Southern Fried Chicken", "Chicken Bacon & Stuffing", "BBQ Chicken Bacon & Cheese","Chicken & Avocado"])
]



class FoodFootprintViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var displayFootprint: UILabel!
    
    @IBAction func goBack(_ sender: Any) {
    }
        
    //array and dictionary for the data
    let foodOptions = ["Beef (beef herd)", "Lamb", "Cheese", "Beef (dairy herd)", "Chocolate", "Coffee", "Prawns", "Palm Oil", "Pig Meat", "Poultry Meat", "Olive Oil", "Fish (farmed)", "Eggs", "Rice", "Fish (wild catch)", "Milk", "Cane Sugar", "Groundnuts", "Wheat & Rye", "Tomatoes", "Maize", "Cassava", "Soymilk", "Peas", "Bananas", "Root Vegetables", "Apples", "Citrus Fruit", "Nuts","Prawn Mayo", "BLT", "Ham & Cheese", "Chicken & Bacon", "Ham", "All Day Breakfast", "Cheese & Onion","Egg & Bacon", "Egg", "Chicken Club", "Tuna Mayo", "Southern Fried Chicken", "Chicken Bacon & Stuffing", "BBQ Chicken Bacon & Cheese","Chicken & Avocado"]
    
    //the meal deal co2e was calculated assuming that the customer would purchase a pack of crisps and a drink
    //the data was take from https://www.greenenergyuk.com/blog/news/environmental-impact-of-your-meal-deal
    let footprint = [0: "60kg of CO2e/kg of food equivalent of 240 miles",
                     1: "24kg of CO2e/kg of food equivalent of 96 miles",
                     2: "21kg of CO2e/kg of food equivalent of 84 miles",
                     3: "21kg of CO2e/kg of food equivalent of 84 miles",
                     4: "19kg of CO2e/kg of food equivalent of 76 miles",
                     5: "17kg of CO2e/kg of food equivalent of 68 miles",
                     6: "12kg of CO2e/kg of food equivalent of 48 miles",
                     7: "8kg of CO2e/kg of food equivalent of 32 miles",
                     8: "7kg of CO2e/kg of food equivalent of 28 miles",
                     9: "6kg of CO2e/kg of food equivalent of 24 miles",
                     10: "6kg of CO2e/kg of food equivalent of 24 miles",
                     11: "5kg of CO2e/kg of food equivalent of 20 miles",
                     12: "4.5kg of CO2e/kg of food equivalent of 18 miles",
                     13: "4kg of CO2e/kg of food equivalent of 16 miles",
                     14: "3kg of CO2e/kg of food equivalent of 12 miles",
                     15: "3kg of CO2e/kg of food equivalent of 12 miles",
                     16: "3kg of CCO2e/kg of food equivalent of 12 miles",
                     17: "2.5kg of CO2e/kg of food equivalent of 10 miles",
                     18: "1.4kg of CO2e/kg of food equivalent of 5.6 miles",
                     19: "1.4kg of CO2e/kg of food equivalent of 5.6 miles",
                     20: "1.0kg of CO2e/kg of food equivalent of 4 miles",
                     21: "1.0kg of CO2e/kg of food equivalent of 4 miles",
                     22: "0.9g of CO2e/kg of food equivalent of 3.6 miles",
                     23: "0.9kg of CO2e/kg of food equivalent of 3.6 miles",
                     24: "0.7kg of CO2e/kg of food equivalent of 2.8 miles",
                     25: "0.4kg of CO2e/kg of food equivalent of 1.6 miles",
                     26: "0.4kg of CO2e/kg of food equivalent of 1.6 miles",
                     27: "0.3kg of CO2e/kg of food equivalent of 1.2 miles",
                     28: "0.3kg of CO2e/kg of food equivalent of 1.2 miles",
                     29: "14.82kg of CO2e/meal deal equivalent of 59.4 miles",
                     30: "9.34kg of CO2e/meal deal equivalent of 37.4 miles",
                     31: "8.62kg of CO2e/meal deal equivalent of 34.5 miles",
                     32: "7.36kg of CO2e/meal deal equivalent of 29.4 miles",
                     33: "6.43g of CO2e/meal deal equivalent of 25.7 miles",
                     34: "5.48kg of CO2e/meal deal equivalent of 21.9 miles",
                     35: "5.48kg of CO2e/meal deal equivalent of 21.9 miles",
                     36: "5.23kg of CO2e/meal deal equivalent of 20.0 miles",
                     37: "5.05kg of CO2e/meal deal equivalent of 20.2 miles",
                     38: "4.41kg of CO2e/meal deal equivalent of 17.6 miles",
                     39: "3.92kg of CO2e/meal deal equivalent of 15.58 miles",
                     40: "3.71kg of CO2e/meal deal equivalent of 14.8 miles",
                     41: "3.29kg of CO2e/meal deal equivalent of 13.2 miles",
                     42: "3.14kg of CO2e/meal deal equivalent of 12.6 miles",
                     43: "2.85kg of CO2e/meal deal equivalent of 11.4 miles",
                     ]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->Int {
        //return as many options in the picker as food options
        return foodOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foodOptions[row]
    }
 
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent  component: Int) {
       //show the co2e for the selected value
        if let selectedFood = footprint[row]{
            displayFootprint.text = selectedFood
        }
    }
}

