//
//  MainView.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 03/01/22.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .clear
        label.text = "Title"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        setHierarchy()
        setConstraints()
    }
    
    func setHierarchy(){addSubview(firstLabel)}
    
    private func setConstraints(){
         firstLabel.snp.makeConstraints{ $0
             $0.top.equalToSuperview().offset(20)
             $0.leading.equalToSuperview().offset(20)
             $0.trailing.equalToSuperview().offset(-20)
             $0.bottom.equalToSuperview().offset(20)
         }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
