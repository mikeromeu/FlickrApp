//
//  LoadableImageView.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import UIKit

class LoadableImageView: UIImageView {

    lazy var activityIndicator: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.color = .white
        activity.hidesWhenStopped = true
        self.addSubview(activity)
        activity.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        activity.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        return activity
    }()

}
