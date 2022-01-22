//
//  ListingView.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 22/01/22.
//

import Foundation
import UIKit

class ListingView: UIView {
    
    
    private lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        setHierarchy()
        setConstraints()
    }
    
    func setHierarchy(){
        addSubview(container)
        //addSubview(firstLabel)
    }
    
    private func setConstraints(){
        
        container.snp.makeConstraints{make in make.edges.equalToSuperview()}
        
//         firstLabel.snp.makeConstraints{ make in
//             make.top.equalToSuperview().offset(20)
//             make.leading.equalToSuperview().offset(20)
//         }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
