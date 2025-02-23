//
//  PanModalKeyboardPresentable.swift
//  PanModalDemo
//
//  Created by J.arji on 2/23/25.
//  Copyright © 2025 Detail. All rights reserved.
//



import UIKit
public protocol PanModalKeyboardPresentable: PanModalPresentable {

    var keyboardIsShown: Bool { get }

    var minimumHeight: CGFloat { get }
    var keyboardHeight: CGFloat { get }
    var extrasHeight: CGFloat { get }
    var contentWithKeyboardHeight: CGFloat { get }
    
    var keyboardScrollView: UIScrollView? { get }
}
