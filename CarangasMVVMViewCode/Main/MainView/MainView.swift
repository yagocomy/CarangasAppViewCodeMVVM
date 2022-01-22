//
//  MainView.swift
//  CarangasMVVMViewCode
//
//  Created by Yago De Moura Silva on 03/01/22.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    private lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .boldSystemFont(ofSize: 40)
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
    
    func setHierarchy(){
        addSubview(container)
        addSubview(firstLabel)
    }
    
    private func setConstraints(){
        
        container.snp.makeConstraints{make in make.edges.equalToSuperview()}
        
         firstLabel.snp.makeConstraints{ make in
             make.top.equalToSuperview().offset(20)
             make.leading.equalToSuperview().offset(20)
         }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
