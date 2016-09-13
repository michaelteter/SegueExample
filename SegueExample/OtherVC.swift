//
//  OtherVC.swift
//  SegueExample
//
//  Created by Michael Teter on 2016-09-14.
//  Copyright © 2016 Michael Teter. All rights reserved.
//

import UIKit

class OtherVC: UIViewController {

    @IBOutlet weak var lblContent: UILabel!
    
    var txtValueOther: String!
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
    }
    
    func updateUI() {
        guard txtValueOther != nil else { return }
        lblContent.text = txtValueOther
    }
    
    @IBAction func btnUppercasePressed(_ sender: UIButton) {
        guard txtValueOther != nil else { return }
        txtValueOther = txtValueOther.uppercased()
        updateUI()
    }

    @IBAction func btnLowercasePressed(_ sender: UIButton) {
        guard txtValueOther != nil else { return }
        txtValueOther = txtValueOther.lowercased()
        updateUI()
    }
    
    @IBAction func btnDonePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MainVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainVC" {
            if let dest = segue.destination as? MainVC {
                dest.txtValueMain = txtValueOther
            }
        }
    }
}
