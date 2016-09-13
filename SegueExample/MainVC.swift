//
//  MainVC.swift
//  SegueExample
//
//  Created by Michael Teter on 2016-09-14.
//  Copyright © 2016 Michael Teter. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var txtContent: UITextField!
    
    var txtValueMain: String!
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
    }

    func updateUI() {
        guard txtValueMain != nil else { return }
        txtContent.text = txtValueMain
    }
    
    @IBAction func btnModifyPressed(_ sender: AnyObject) {
        guard txtContent.text != nil else { return }
        
        txtValueMain = txtContent.text!
        performSegue(withIdentifier: "OtherVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "OtherVC" {
            if let dest = segue.destination as? OtherVC {
                dest.txtValueOther = txtValueMain
            }
        }
    }
}

