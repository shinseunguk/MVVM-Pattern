//
//  ViewController.swift
//  MVVM Pattern
//
//  Created by mac on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View
        let myInfoView = MyInfoView()
        
        // ViewModel
        let viewModel = ViewModel()
        viewModel.configure(myInfoView)
        
        self.view.addSubview(myInfoView)
                
        // layout
        myInfoView.translatesAutoresizingMaskIntoConstraints = false
        myInfoView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 135).isActive = true
        myInfoView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myInfoView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        myInfoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
    }

}

