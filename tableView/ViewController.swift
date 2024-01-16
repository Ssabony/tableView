//
//  ViewController.swift
//  tableView
//
//  Created by 903-05i on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    var person = Person()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label1.text = person.name
        
        label3.text = person.surname
        
        img.image = UIImage(named: person.imageName)
        
        
        
    }


}

