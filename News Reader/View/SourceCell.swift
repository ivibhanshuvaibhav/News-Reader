//
//  SourceCell.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 30/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class SourceCell: UITableViewCell {

    @IBOutlet weak var feedName: UILabel!
    
    func updateView(source: Source) {
        feedName.text = source.name
    }
    
}
