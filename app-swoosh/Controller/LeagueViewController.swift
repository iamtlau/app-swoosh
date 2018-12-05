//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Tom Lau on 12/4/18.
//  Copyright © 2018 TL Dev. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    @IBAction func onNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    @IBAction func mensTap(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func womensTap(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func coedsTap(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player
            
        }
    }
}
