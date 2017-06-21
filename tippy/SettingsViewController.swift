//
//  SettingsViewController.swift
//  tippy
//
//  Created by Isabella Teng on 6/20/17.
//  Copyright © 2017 Isabella Teng. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var defaultSettingsBar: UISegmentedControl!
    
    @IBAction func changeDefaultPercentage(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(defaultSettingsBar.selectedSegmentIndex, forKey: "default_tip_index")
        defaults.synchronize()
    }
    
    @IBOutlet weak var newDefault: UITextField!

}
