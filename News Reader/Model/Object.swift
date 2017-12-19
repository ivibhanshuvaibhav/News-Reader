//
//  Object.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 30/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import Foundation

class Object {
    
    let sectionName: String
    let sectionObjects: [Source]
    
    init(sectionName: String, sectionObjects:[Source]) {
        self.sectionName = sectionName
        self.sectionObjects = sectionObjects
    }
    
}
