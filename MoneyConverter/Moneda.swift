//
//  Conversion.swift
//  MoneyConverter
//
//  Created by Daniel Tarrasso on 30/10/18.
//  Copyright © 2018 Daniel Tarrasso. All rights reserved.
//

import Foundation
import UIKit

class Moneda{
    var name: String
    var value: Int
    var flag: UIImage
    var background: UIImage

    init(name: String, value: Int, flag: UIImage, background: UIImage){
        self.name = name
        self.value = value
        self.flag = flag
        self.background = background
    }
}



