//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by Nam Nguyen on 07/07/2023.
//

import UIKit

class RulesVC: UIViewController {

    let topLabel = UILabel()
    let descriptionLabel = UILabel()
    let exerciseLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureTopLabel()
        configureDescriptionLabel()
        configureExerciseLabel()
    }
    
    func configureTopLabel() {
        view.addSubview(topLabel)
        topLabel.text = "Rules"
        topLabel.font = .systemFont(ofSize: 40, weight: .bold)
        topLabel.translatesAutoresizingMaskIntoConstraints  = false
        
        NSLayoutConstraint.activate([
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
        ])
    }
    
    func configureDescriptionLabel() {
        view.addSubview(descriptionLabel)
        descriptionLabel.text = "The value of each card represents the number of excercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        descriptionLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.translatesAutoresizingMaskIntoConstraints  = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            descriptionLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 20),
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.text = "♠️ = Push-ups\n\n❤️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints  = false
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exerciseLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 60),
        ])
    }
}
