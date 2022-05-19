//
//  ViewController.swift
//  hw02
//
//  Created by חן איפרגן on 18/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func start(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "game") as! gmaeView
        present(vc, animated: true)


        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }





    
    
}
