//
//  BankManagerUIApp - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let businessTimeLabel: UILabel = UILabel()
    let totalStackView: UIStackView = UIStackView()

    let underExaminationTotalView: UIView = UIView()
    let underExaminationView: UIView = UIView()
    let underExaminationStackView: UIStackView = UIStackView()
    
    let implementTotalView: UIView = UIView()
    let implementView: UIView = UIView()
    let implementStackView: UIStackView = UIStackView()
    
    let waitingTotalView: UIView = UIView()
    let waitingView: UIView = UIView()
    let waitingScrollView: UIScrollView = UIScrollView()
    let waitingStackView: UIStackView = UIStackView()
    
    let buttonStackView: UIStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpBusinessTimeLabel()
        setUpTotalStackView()
        setUpButtonStackView()
        addSubView()
        
        NSLayoutConstraint.activate([
            businessTimeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            businessTimeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            businessTimeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            totalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            totalStackView.topAnchor.constraint(equalTo: businessTimeLabel.bottomAnchor),
            totalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttonStackView.topAnchor.constraint(equalTo: totalStackView.bottomAnchor),
            buttonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setUpBusinessTimeLabel() {
        businessTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        businessTimeLabel.font = .preferredFont(forTextStyle: .body)
        businessTimeLabel.textColor = .black
        businessTimeLabel.text = "업무시간 -"
        businessTimeLabel.adjustsFontForContentSizeCategory = true
        businessTimeLabel.textAlignment = .right
    }
    
    private func setUpTotalStackView() {
        totalStackView.translatesAutoresizingMaskIntoConstraints = false
        totalStackView.axis = .vertical
        totalStackView.distribution = .fillEqually
        
        setUpUnderEstimationTotalView()
        setUpImplementTotalView()
        setUpwaitingTotalView()
        
        totalStackView.addArrangedSubview(underExaminationTotalView)
        totalStackView.addArrangedSubview(implementTotalView)
        totalStackView.addArrangedSubview(waitingTotalView)
    }
    
    //MARK: UnderEstimation
    private func setUpUnderEstimationTotalView() {
        underExaminationTotalView.translatesAutoresizingMaskIntoConstraints = false
        setUpUnderEstimationViewAndLabel()
        setUpUnderEstimationStackView()
        
        underExaminationTotalView.addSubview(underExaminationView)
        underExaminationTotalView.addSubview(underExaminationStackView)
        
        NSLayoutConstraint.activate([
            underExaminationView.leadingAnchor.constraint(equalTo: underExaminationTotalView.leadingAnchor),
            underExaminationView.topAnchor.constraint(equalTo: underExaminationTotalView.topAnchor),
            underExaminationView.bottomAnchor.constraint(equalTo: underExaminationTotalView.bottomAnchor),
            underExaminationView.widthAnchor.constraint(equalToConstant: 125),
            underExaminationStackView.leadingAnchor.constraint(equalTo: underExaminationView.trailingAnchor),
            underExaminationStackView.topAnchor.constraint(equalTo: underExaminationTotalView.topAnchor),
            underExaminationStackView.trailingAnchor.constraint(equalTo: underExaminationTotalView.trailingAnchor),
            underExaminationStackView.bottomAnchor.constraint(equalTo: underExaminationTotalView.bottomAnchor)
        ])
    }
    
    private func setUpUnderEstimationViewAndLabel() {
        underExaminationView.translatesAutoresizingMaskIntoConstraints = false
        underExaminationView.backgroundColor = .systemOrange
        
        let underExaminationLable: UILabel = UILabel()
        underExaminationLable.translatesAutoresizingMaskIntoConstraints = false
        underExaminationLable.font = .preferredFont(forTextStyle: .body)
        underExaminationLable.textColor = .white
        underExaminationLable.text = "심사중"
        underExaminationLable.adjustsFontForContentSizeCategory = true
        
        underExaminationView.addSubview(underExaminationLable)
        
        NSLayoutConstraint.activate([
            underExaminationLable.centerXAnchor.constraint(equalTo: underExaminationView.centerXAnchor),
            underExaminationLable.centerYAnchor.constraint(equalTo: underExaminationView.centerYAnchor)
        ])
    }
    
    private func setUpUnderEstimationStackView() {
        underExaminationStackView.translatesAutoresizingMaskIntoConstraints = false
        underExaminationStackView.axis = .horizontal
        underExaminationStackView.distribution = .fill
        
        //underExaminationStackView.backgroundColor = .black
        //TODO: view 3개 넣어야댐..
    }
    
    //MARK: Implement
    private func setUpImplementTotalView() {
        implementTotalView.translatesAutoresizingMaskIntoConstraints = false
        setUpImplementViewAndLabel()
        setUpImplementStackView()
        
        implementTotalView.addSubview(implementView)
        implementTotalView.addSubview(implementStackView)
        
        NSLayoutConstraint.activate([
            implementView.leadingAnchor.constraint(equalTo: implementTotalView.leadingAnchor),
            implementView.topAnchor.constraint(equalTo: implementTotalView.topAnchor),
            implementView.bottomAnchor.constraint(equalTo: implementTotalView.bottomAnchor),
            implementView.widthAnchor.constraint(equalToConstant: 125),
            implementStackView.leadingAnchor.constraint(equalTo: implementView.trailingAnchor),
            implementStackView.topAnchor.constraint(equalTo: implementTotalView.topAnchor),
            implementStackView.trailingAnchor.constraint(equalTo: implementTotalView.trailingAnchor),
            implementStackView.bottomAnchor.constraint(equalTo: implementTotalView.bottomAnchor)
        ])
    }
    
    private func setUpImplementViewAndLabel() {
        implementView.translatesAutoresizingMaskIntoConstraints = false
        implementView.backgroundColor = .systemGreen
        
        let implementLabel: UILabel = UILabel()
        implementLabel.translatesAutoresizingMaskIntoConstraints = false
        implementLabel.font = .preferredFont(forTextStyle: .body)
        implementLabel.textColor = .white
        implementLabel.text = "업무중"
        implementLabel.adjustsFontForContentSizeCategory = true
        
        implementView.addSubview(implementLabel)
        
        NSLayoutConstraint.activate([
            implementLabel.centerXAnchor.constraint(equalTo: implementView.centerXAnchor),
            implementLabel.centerYAnchor.constraint(equalTo: implementView.centerYAnchor)
        ])
    }
    
    private func setUpImplementStackView() {
        implementStackView.translatesAutoresizingMaskIntoConstraints = false
        implementStackView.axis = .horizontal
        implementStackView.distribution = .fill

        //TODO: view 3개 넣어야댐..
    }
    
    //MARK: Waiting
    private func setUpwaitingTotalView() {
        waitingTotalView.translatesAutoresizingMaskIntoConstraints = false
        setUpWaitingViewAndLabel()
        setUpWaitingScrollView()
        
        waitingTotalView.addSubview(waitingView)
        waitingTotalView.addSubview(waitingScrollView)
        
        NSLayoutConstraint.activate([
            waitingView.leadingAnchor.constraint(equalTo: waitingTotalView.leadingAnchor),
            waitingView.topAnchor.constraint(equalTo: waitingTotalView.topAnchor),
            waitingView.bottomAnchor.constraint(equalTo: waitingTotalView.bottomAnchor),
            waitingView.widthAnchor.constraint(equalToConstant: 125),
            waitingScrollView.leadingAnchor.constraint(equalTo: waitingView.trailingAnchor),
            waitingScrollView.topAnchor.constraint(equalTo: waitingTotalView.topAnchor),
            waitingScrollView.trailingAnchor.constraint(equalTo: waitingTotalView.trailingAnchor),
            waitingScrollView.bottomAnchor.constraint(equalTo: waitingTotalView.bottomAnchor)
        ])
    }
    
    private func setUpWaitingViewAndLabel() {
        waitingView.translatesAutoresizingMaskIntoConstraints = false
        waitingView.backgroundColor = .systemBlue
        
        let waitingLabel: UILabel = UILabel()
        waitingLabel.translatesAutoresizingMaskIntoConstraints = false
        waitingLabel.font = .preferredFont(forTextStyle: .body)
        waitingLabel.textColor = .white
        waitingLabel.text = "대기중"
        waitingLabel.adjustsFontForContentSizeCategory = true
        
        waitingView.addSubview(waitingLabel)
        
        NSLayoutConstraint.activate([
            waitingLabel.centerXAnchor.constraint(equalTo: waitingView.centerXAnchor),
            waitingLabel.centerYAnchor.constraint(equalTo: waitingView.centerYAnchor)
        ])
    }
    
    private func setUpWaitingScrollView() {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = .preferredFont(forTextStyle: .largeTitle)
//        label.textColor = .black
//        label.text = "asdfhjklsadjfklajsdfiojqwelfkajsdflijeqwilfjailsdfjilqewjfiljadilsfjewil;fjil;ajewilf;jadioslfjeiqwhfhasdfjkhadsjkflhuksadhfkluasfhkljasdfhkluhqwekuflhadjkslfhukwefhklasdfhukalsdfhueuwklafhkulqhfwkluhdsajkfheqwkufhlajskdfhuadshfl"
        waitingScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        waitingStackView.translatesAutoresizingMaskIntoConstraints = false
        waitingStackView.axis = .horizontal
        waitingStackView.distribution = .fill

        waitingScrollView.addSubview(waitingStackView)
        //waitingStackView.addArrangedSubview(label)
        
        NSLayoutConstraint.activate([
            waitingStackView.topAnchor.constraint(equalTo: waitingScrollView.topAnchor),
            waitingStackView.leadingAnchor.constraint(equalTo: waitingScrollView.leadingAnchor),
            waitingStackView.trailingAnchor.constraint(equalTo: waitingScrollView.trailingAnchor),
            waitingStackView.bottomAnchor.constraint(equalTo: waitingScrollView.bottomAnchor),
            waitingStackView.heightAnchor.constraint(equalTo: waitingScrollView.contentLayoutGuide.heightAnchor)
        ])
    }
    
    //MARK: ButtonStackView
    private func setUpButtonStackView() {
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        
        let addCustomerButton: UIButton = UIButton()
        addCustomerButton.setTitle("고객 10명 추가", for: .normal)
        addCustomerButton.setTitleColor(.systemBlue, for: .normal)
        addCustomerButton.titleLabel?.adjustsFontForContentSizeCategory = true

        
        let resetButton: UIButton = UIButton()
        resetButton.setTitle("초기화", for: .normal)
        resetButton.setTitleColor(.systemRed, for: .normal)
        resetButton.titleLabel?.adjustsFontForContentSizeCategory = true
        
        buttonStackView.addArrangedSubview(addCustomerButton)
        buttonStackView.addArrangedSubview(resetButton)
    }
    
    private func addSubView() {
        view.addSubview(businessTimeLabel)
        view.addSubview(totalStackView)
        view.addSubview(buttonStackView)
    }
}

