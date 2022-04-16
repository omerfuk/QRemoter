//
//  ChooseViewController.swift
//  QRemoter
//
//  Created by Ömer Faruk Kılıçaslan on 29.03.2022.
//

import UIKit

class ChooseViewController: UIViewController {

    var name = ""
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseButton: UIButton!
    @IBOutlet weak var elevatorButton: UIButton!
    
    @IBAction func elevatorButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ElevatorViewController") as! ElevatorViewController
        
        self.show(vc, sender: nil)
        
    }
    
    @IBAction func houseButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HouseViewController") as! HouseViewController
        
        self.show(vc, sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name

        
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
