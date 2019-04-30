//
//  Localizator.swift
//  TestLocalized
//
//  Created by Polo Teh on 28/04/2019.
//  Copyright © 2019 Polo Teh. All rights reserved.
//

import Foundation
import UIKit
class Localizator {
    
    static let sharedInstance = Localizator()
    
    lazy var localizableDictionary: NSDictionary! = {
        if let path = Bundle.main.path(forResource: "Localizable", ofType: "plist") {
            return NSDictionary(contentsOfFile: path)
        }
        fatalError("Localizable file NOT found")
    }()
    
    func localize(string: String) -> String {
        guard let localizedString = (localizableDictionary.value(forKey: string) as AnyObject).value(forKey:"value") as? String else {
            
            assertionFailure("Missing translation for: \(string)")
            return "**\(string)"
        }
        return localizedString
       
    }
}


extension String {
    var localized: String {
        return Localizator.sharedInstance.localize(string: self)
    }
}
