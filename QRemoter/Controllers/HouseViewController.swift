//
//  HouseViewController.swift
//  QRemoter
//
//  Created by Ömer Faruk Kılıçaslan on 29.03.2022.
//

import UIKit

class HouseViewController: UIViewController {


    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var lockDoorButton: UIButton!
    @IBOutlet weak var electricityStatusButton: UIButton!
    
    @IBOutlet weak var windowStatusButton: UIButton!
    

    @IBAction func backButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChooseViewController") as! ChooseViewController
        
        self.show(vc, sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title:"Info", message: "Status\nDoors:Unlocked\nElectricity:Off\nWindows:Locked", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

       
    }
  
    

    
    var door = true
    var electricity = true
    var window = true
    
    @IBAction func lockDoorButton(_ sender: UIButton) {
        
        
        if door == true {
            let alert = UIAlertController(title:"Info", message: "Doors Locked", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            lockDoorButton.setTitle("Unlock the Doors", for: .normal)
            door = false
            
        }
        
        else {
            
            let alert = UIAlertController(title:"Info", message: "Doors Unlocked", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            lockDoorButton.setTitle("Lock the Doors", for: .normal)
            door = true
        }
    }
    
    
    @IBAction func electricityStatusButton(_ sender: UIButton) {
        
        if electricity == true {
            let alert = UIAlertController(title:"Info", message: "Electricity Successfully Cut Off", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            electricityStatusButton.setTitle("Open the Electricity", for: .normal)
            electricity = false
        }
        
        else{
            
            let alert = UIAlertController(title:"Info", message: "Electricity Power On ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            electricityStatusButton.setTitle("Cut Electricity", for: .normal)
            electricity = true
        }
    }
    
    
    @IBAction func windowStatusButton(_ sender: UIButton) {
        
        if window == true {
            let alert = UIAlertController(title:"Info", message: "Windows Successfully Locked", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            windowStatusButton.setTitle("Unlock the Windows", for: .normal)
            window = false
        }
        
        else{
            
            let alert = UIAlertController(title:"Info", message: "Windows Successfully Unlocked ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            windowStatusButton.setTitle("Lock the Windows", for: .normal)
            window = true
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
