//
//  DetailPeopleVC.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class DetailPeopleVC: UIViewController {

    
    var personIExpect : User!
    
    
    @IBOutlet weak var personPic: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personEmail: UILabel!
    @IBOutlet weak var personTown: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shitINeedToDo()
    }

    
    func shitINeedToDo() {
        do {
            let data = try Data(contentsOf: personIExpect.picture.medium)
            personPic.image = UIImage(data: data)
        } catch {
            
        }
        personName.text = "\(personIExpect.name.first) \(personIExpect.name.last)"
        personTown.text = personIExpect.location.city
        personEmail.text = personIExpect.gender
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
