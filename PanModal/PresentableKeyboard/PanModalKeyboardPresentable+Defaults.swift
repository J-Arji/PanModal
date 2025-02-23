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
        let height = (self.keyboardScrollView?.contentSize.height ?? .zero) +
            (self.titleView?.frame.height ?? .zero) +
            self.keyboardHeight +
            self.extrasHeight
        return max(height, self.minimumHeight)
    }
}
