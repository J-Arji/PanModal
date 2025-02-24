//
//  PanModalKeyboardPresentable+Defaults.swift
//  PanModalDemo
//
//  Created by J.arji on 2/23/25.
//  Copyright © 2025 Detail. All rights reserved.
//


import UIKit

public extension PanModalKeyboardPresentable where Self: UIViewController  {

    var extrasHeight: CGFloat {
        .zero
    }

    var minimumHeight: CGFloat {
        .zero
    }

    var keyboardScrollView: UIScrollView? {
        self.panScrollable
    }

    var contentWithKeyboardHeight: CGFloat {
        var height = (self.keyboardScrollView?.contentSize.height ?? .zero) +
        self.keyboardHeight +
        self.extrasHeight
        if let navHeight = navigationController?.navigationBar.bounds.height { height += navHeight }
        return max(height, self.minimumHeight)
    }
}

