//
//  PanContainerView.swift
//  PanModal
//
//  Copyright © 2018 Tiny Speck, Inc. All rights reserved.
//

#if os(iOS)
import UIKit

/**
 A view wrapper around the presented view in a PanModal transition.

 This allows us to make modifications to the presented view without
 having to do those changes directly on the view
 */
class PanContainerView: UIView {
   private let presentedView: UIView

   init(presentedView: UIView, frame: CGRect) {
       self.presentedView = presentedView
       super.init(frame: frame)
       addSubview(presentedView)
   }

   @available(*, unavailable)
   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }

   override func layoutSubviews() {
       super.layoutSubviews()
       self.presentedView.frame.origin = .zero
   }
 }

extension UIView {

    /**
     Convenience property for retrieving a PanContainerView instance
     from the view hierachy
     */
    var panContainerView: PanContainerView? {
        return subviews.first(where: { view -> Bool in
            view is PanContainerView
        }) as? PanContainerView
    }

}
#endif
