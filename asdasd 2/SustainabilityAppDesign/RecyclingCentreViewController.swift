//
//  RecyclingCentreViewController.swift
//  SustainabilityAppDesign
//
//  Created by Gabriela Podaru on 17/04/2023.
//

import UIKit
import MapKit
import CoreLocation

class RecyclingCentreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MKMapViewDelegate, CLLocationManagerDelegate  {
    
   
    
    var rec_centre: recyclingCentres? = nil
    var rec_centres: rCentres? = nil
    
    var centre: String = ""
    //the arrays for the centres and their address
    var centre_names = ["Gaskells Waste Services","Recycling Lives", "Old Swan Household Waste Recycling Centre", "South Sefton Recycling Centre", "West Kirby Recycling Centre","Bidston Recycling Centre"]
    var cities = ["Liverpool, L1 0AR", "Liverpool, L10 5HA", "Liverpool, L18 5EA", "Bootle, L20 4AE", "West Kirby, CH48 5HH", "Birkenhead, CH41 1EB"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //displaying the information in the tabel
    
        let aCell = tableView.dequeueReusableCell(withIdentifier:  "myCell", for: indexPath)
      
        var content = UIListContentConfiguration.subtitleCell()
        content.text = "\(centre_names[indexPath.row])"
        content.secondaryText = "\(cities[indexPath.row])"
        aCell.contentConfiguration = content
        return aCell 
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //segue to go to more detail
        centre = centre_names[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //passing the selected value from cell to the detail view controller
        if(segue.identifier == "toDetail"){
            
            let dvc = segue.destination as! DetailViewController
            dvc.selectedCentre = centre
               
    
        }
    }
    
    
    @IBAction func goBack(_ sender: Any) {
    
    }
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var myMap: MKMapView!
    
    /*
    var userLocation = CLLocation()
        var locationManager = CLLocationManager()
        var firstRun = true
        var startTrackingTheUser = false
        
    
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let locationOfUser = locations[0] //this method returns an array of locations
            //generally we always want the first one (usually there's only 1 anyway)
            
            let latitude = locationOfUser.coordinate.latitude
            let longitude = locationOfUser.coordinate.longitude
            //get the users location (latitude & longitude)
            let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            userLocation = CLLocation(latitude: latitude, longitude: longitude)
            
            if firstRun {
                firstRun = false
                let latDelta: CLLocationDegrees = 0.0025
                let lonDelta: CLLocationDegrees = 0.0025
                //a span defines how large an area is depicted on the map.
                let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                
                //a region defines a centre and a size of area covered.
                let region = MKCoordinateRegion(center: location, span: span)
                
                //make the map show that region we just defined.
                self.myMap.setRegion(region, animated: true)
                
               
                _ = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(startUserTracking), userInfo: nil, repeats: false)
            }
            
            if startTrackingTheUser == true {
                myMap.setCenter(location, animated: true)
            }
            
        }
        
        //used to start tracking the user location
        @objc func startUserTracking() {
            startTrackingTheUser = true
        }
    
    */
    func setInitialMap(){
        //setting the user location
        let title = "User - Liverpool One"
        let lat = 53.403
        let lon = -2.985
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
    
    //placing annotations on the map for each recycling centre
    
    func setC1(){
        
        let title = "Gaskells Waste Services"
        let lat = 53.402693
        let lon = -2.977062
        
        let span = MKCoordinateSpan(latitudeDelta:0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
    
    func setC2(){
        
        let title = "Recycling Lives"
        let lat = 53.463234
        let lon = -2.923256
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
  
    func setC3(){
        
        let title = "Mossley Hill Recycling Centre"
        let lat = 53.376368
        let lon = -2.927187
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
    func setC4(){
        
        let title = "South Sefton Recycling Centre"
        let lat = 53.465126
        let lon = -2.997913
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta:0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
    func setC5(){
        
        let title = "West Kirby Recycling Centre"
        let lat = 53.372963
        let lon = -3.188172
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
                                    
    func setC6(){
        
        let title = "Bidston Recycling Centre"
        let lat = 53.402279
        let lon = -3.019039
        
        let span = MKCoordinateSpan(latitudeDelta: 0.045, longitudeDelta: 0.045)
        let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        self.myMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        self.myMap.addAnnotation(annotation)
    }
    
  
   

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setC1()
        setC2()
        setC3()
        setC4()
        setC5()
        setC6()
        
        /*
        locationManager.delegate = self as CLLocationManagerDelegate
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true
        */
        setInitialMap()
       
        
    
        // Do any additional setup after loading the view.
    }
    

   

}
