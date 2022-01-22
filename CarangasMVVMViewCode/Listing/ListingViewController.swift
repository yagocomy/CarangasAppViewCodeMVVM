//
//  ListingViewController.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 22/01/22.
//

import Foundation
import UIKit

public class ListiningViewController: UIViewController {
    
    let listingView: ListingView = {
        let listiningView = ListingView()
        return listiningView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = listingView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 public override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.listingView
    }
}
