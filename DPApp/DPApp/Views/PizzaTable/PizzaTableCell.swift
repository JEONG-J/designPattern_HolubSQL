//
//  pizzaTableCell.swift
//  DPApp
//
//  Created by 정의찬 on 11/29/23.
//

import Foundation
import UIKit
import SnapKit

class PizzaTableCell: UITableViewCell {
    static let identifier = "pizzaTableCell"
    
    private lazy var shopName: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    private lazy var pizzaImgView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 20
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("error")
    }
    
    private func makeConstraints() {
        self.addSubview(shopName)
        self.addSubview(pizzaImgView)
        
        pizzaImgView.snp.makeConstraints{ make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.width.equalTo(60)
            make.height.equalTo(60)
        }
        
        shopName.snp.makeConstraints{ make in
            make.left.equalTo(pizzaImgView.snp.right).offset(20)
            make.centerY.equalToSuperview()
        }
    }
    
    final func configure(_ text: String){
        self.shopName.text = text
        self.pizzaImgView.image = UIImage(named: "\(text)")
    }
    
    final func modelConfigure(_ model: Restaurant){
        self.shopName.text = model.name
        
    }
    
}
