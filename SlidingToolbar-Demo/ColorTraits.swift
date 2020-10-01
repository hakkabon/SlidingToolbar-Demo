//
//  ColorTraits.swift
//  SlidingToolbar Demo
//
//  Created by Ulf Akerstedt-Inoue on 2020/02/09.
//  Copyright © 2020 hakkabon software. All rights reserved.
//

import UIKit

extension UIColor {
    static var customAccent: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                switch (traitCollection.userInterfaceStyle, traitCollection.accessibilityContrast) {
                case (.dark, .high): return UIColor.orange
                case (.dark, _):     return UIColor.white
                case (_, .high):     return UIColor.black
                default:             return UIColor.systemGray
                }
            }
        } else {
            return UIColor.white
        }
    }

    static var systemBackgroundColor: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return .systemBackground
                } else {
                    return .systemBackground
                }
            }
        } else {
            return .white
        }
    }

    static var blurEffect: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return UIColor.white
                } else {
                    return UIColor.gray
                }
            }
        } else {
            return UIColor.white
        }
    }

}
