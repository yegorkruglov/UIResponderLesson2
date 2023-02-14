//
//  ResponsiveView.swift
//  UIResponderLesson2
//
//  Created by Egor Kruglov on 14.02.2023.
//

import Foundation
import UIKit

class ResposiveView: UILabel {
    override var canBecomeFirstResponder: Bool {
        return true
    }
}
