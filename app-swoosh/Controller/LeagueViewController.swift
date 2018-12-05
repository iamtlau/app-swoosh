//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Tom Lau on 12/4/18.
//  Copyright © 2018 TL Dev. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    
    }
    
}
