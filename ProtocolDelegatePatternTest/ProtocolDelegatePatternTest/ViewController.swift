//
//  ViewController.swift
//  ProtocolDelegatePatternTest
//
//  Created by James Lea on 8/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let notificationsView = NotificationSettingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(notificationsView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        notificationsView.frame = CGRect(x: 10, y: view.safe, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
    }


}//End of class

class NotificationSettingView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
        imageView.tintColor = .systemBlue
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "To stay up-to-date enable Push Notifications!"
        label.textAlignment = .center
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Enable Notifications", for: .normal)
        button.backgroundColor = .systemGreen
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize = bounds.size.width/2
        imageView.frame = CGRect(x: (bounds.size.width - imageSize)/2, y: 30, width: imageSize, height: imageSize)
    }
    
}//End of class
