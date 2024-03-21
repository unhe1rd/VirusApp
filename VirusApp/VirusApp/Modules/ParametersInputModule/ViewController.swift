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
    
    func setupStartButton() {
        view.addSubview(startButton)
        let buttonSize:CGFloat = 100
        startButton.translatesAutoresizingMaskIntoConstraints = false
        makeButtonImage(buttonSize: buttonSize)
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            startButton.widthAnchor.constraint(equalToConstant: buttonSize),
            startButton.heightAnchor.constraint(equalToConstant: buttonSize),
        ])
    }
    
    func makeButtonImage(buttonSize:CGFloat){
        let buttonImageConfiguration = UIImage.SymbolConfiguration(pointSize: buttonSize, weight: .regular)
        startButton.setImage(UIImage(systemName: "play.circle", withConfiguration: buttonImageConfiguration), for: .normal)
    }
}

