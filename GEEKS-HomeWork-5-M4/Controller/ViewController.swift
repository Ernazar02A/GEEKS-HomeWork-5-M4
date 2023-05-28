//
//  ViewController.swift
//  GEEKS-HomeWork-5-M4
//
//  Created by MacBook Pro on 27/5/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Get & Post", for: .normal)
        view.setTitleColor( UIColor.black, for: .normal)
        view.backgroundColor = .orange
        view.layer.cornerRadius = 15
        view.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        updateUI()
    }
    
    private func updateUI() {
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(65)
            make.width.equalTo(150)
        }
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        navigationController?.pushViewController(DataViewController(), animated: true)
    }

}

