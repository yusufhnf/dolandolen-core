//
//  ActivityIndicator+Ext.swift
//  dolandolen
//
//  Created by Yusuf Umar Hanafi on 27/11/21.
//

import UIKit

private var activityIndicatorPage: UIView?

extension UIViewController {
    public func showActivityIndicator() {
        activityIndicatorPage = UIView(frame: self.view.bounds)
        activityIndicatorPage?.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.center = activityIndicatorPage!.center
        activityIndicatorView.startAnimating()
        activityIndicatorPage?.addSubview(activityIndicatorView)
        self.view.addSubview(activityIndicatorPage!)
    }
    public func removeActivityIndicator() {
        DispatchQueue.main.async {
            activityIndicatorPage?.removeFromSuperview()
            activityIndicatorPage = nil
        }
    }
}
