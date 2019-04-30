//
//  UILocalizedLabel.swift
//  TestLocalized
//
//  Created by Polo Teh on 28/04/2019.
//  Copyright © 2019 Polo Teh. All rights reserved.
//
import Foundation
import UIKit

final class UILocalizedLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        text = text?.localized
    }
}

