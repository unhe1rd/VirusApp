//
//  ViewController.swift
//  VirusApp
//
//  Created by Mike Ulanov on 21.03.2024.
//

import UIKit

class ParametersInputViewController: UIViewController {
    private let startButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }


}

private extension ParametersInputViewController {
    func setupUI(){
        setupStartButton()
    }
    
    func setupStartButton(){
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        makeButtonImage()
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            startButton.widthAnchor.constraint(equalToConstant: 150),
            startButton.heightAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    func makeButtonImage(){
        let buttonImageConfiguration = UIImage.SymbolConfiguration(pointSize: 150, weight: .regular)
        startButton.setImage(UIImage(systemName: "play.circle", withConfiguration: buttonImageConfiguration), for: .normal)
    }
}

