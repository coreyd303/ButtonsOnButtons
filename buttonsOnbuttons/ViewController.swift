//
//  ViewController.swift
//  buttonsOnbuttons
//
//  Created by Corey Davis on 7/30/19.
//  Copyright © 2019 Pond5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var buttonView: UIView!
    private var buttonLabel: UILabel!
    private var circle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        buttonView = UIView()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(buttonView)

        NSLayoutConstraint.activate([
            buttonView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            buttonView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: 50),
            buttonView.widthAnchor.constraint(equalToConstant: 200)
            ])

        buttonView.layer.cornerRadius = 3.0
        buttonView.layer.borderColor = UIColor.green.cgColor
        buttonView.layer.borderWidth = 1.5

        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        buttonView.addGestureRecognizer(tap)

        buttonLabel = UILabel()
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonView.addSubview(buttonLabel)

        NSLayoutConstraint.activate([
            buttonLabel.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
            buttonLabel.centerYAnchor.constraint(equalTo: buttonView.centerYAnchor),
            buttonLabel.widthAnchor.constraint(equalToConstant: 100),
            buttonLabel.heightAnchor.constraint(equalTo: buttonView.heightAnchor, multiplier: 0.66)
            ])

        buttonLabel.text = "My Button"
        buttonLabel.textColor = UIColor.green

        circle = UILabel()
        circle.translatesAutoresizingMaskIntoConstraints = false
        buttonView.addSubview(circle)

        let size: CGFloat = 30.0

        NSLayoutConstraint.activate([
            circle.trailingAnchor.constraint(equalTo: buttonView.trailingAnchor, constant: -5),
            circle.centerYAnchor.constraint(equalTo: buttonView.centerYAnchor),
            circle.widthAnchor.constraint(equalToConstant: size),
            circle.heightAnchor.constraint(equalToConstant: size)
            ])

        circle.text = "i"
        circle.textColor = .green
        circle.textAlignment = .center
        circle.layer.cornerRadius = size / 2
        circle.layer.borderColor = UIColor.green.cgColor
        circle.layer.borderWidth = 1.5

        let circleTapped = UITapGestureRecognizer(target: self, action: #selector(didTapLabel(_:)))
        circle.addGestureRecognizer(circleTapped)


    }

    @objc func didTapView(_ sender: UIView) {
        print("Woot I tapped your view")
    }

    @objc func didTapLabel(_ sender: UILabel) {
        print("Woot I tapped your label")
    }

}

