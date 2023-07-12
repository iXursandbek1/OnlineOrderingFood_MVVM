//
//  BaseCollectionReusableView.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import UIKit

class BaseCollectionReusableView <CellModel> : UICollectionReusableView {
    
    typealias CellModel = CellModel
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    var model: CellModel? {
        didSet {
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initView() {
        
    }
    
    private func updateUI(){
        
        if let model = model {
            updateUI(with: model)
        }
    }
    func updateUI(with model: CellModel){
    }
}
