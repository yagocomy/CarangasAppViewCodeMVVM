//
//  MainViewController.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 03/01/22.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let posLaunchView: MainView = {
        let posLaunchView = MainView()
        return posLaunchView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = posLaunchView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.posLaunchView
    }
}
