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
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in // ESPERO 3s PARA O SPLASH SUMIR
            let vc = ListiningViewController()
            vc.modalPresentationStyle = .fullScreen // CONFIGURO O VIEW CONTROLLER PARA TELA CHEIA
            vc.modalTransitionStyle = .crossDissolve
            self?.present(vc, animated: true, completion: nil) // APRESENTO O VC
        }
    }
}
