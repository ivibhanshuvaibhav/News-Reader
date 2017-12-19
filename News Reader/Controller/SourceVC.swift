//
//  SourceVC.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 30/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit
import SVProgressHUD

class SourceVC: UIViewController {
    
    let sources = Sources().getSectionObjects()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.dismiss()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension SourceVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sources.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sources[section].sectionObjects.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sources[section].sectionName.uppercased()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SourceCell") as! SourceCell
        let source = sources[indexPath.section].sectionObjects[indexPath.row]
        cell.updateView(source: source)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainVC
        initializeProgressHUD()
        mainVC.source = sources[indexPath.section].sectionObjects[indexPath.row].identifier
        present(mainVC, animated: true, completion: nil)
    }
    
}

