//
//  CategoriesViewModel.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import Foundation
import UIKit

class CategoryViewModel {
    
    var reloadCollectionView: (()->())?
    
    var index: Int = 0 {
        didSet {
            self.reloadCollectionView?()
        }
    }
    
    private var categories: [CategoriesModel] = [] {
        didSet {
            self.reloadCollectionView?()
        }
    }
    
    private var items: [Сategory] = [] {
        didSet {
            self.reloadCollectionView?()
        }
    }
    
    init() {
        getCategories()
        getItems()
    }
    
    func getCategoryName(index: Int) -> CategoriesModel {
        let categoryName = categories[index]
        return categoryName
    }
    
    func getItems(item: Int) -> Сategory {
        
        if categories.count < index {
            return Сategory(id: 0, name: "", imageURL: "")
        }
        
        let id  = categories[index].сategories[item].id
        let name  = categories[index].сategories[item].name
        let imageURl  = categories[index].сategories[item].imageURL
        
        
        let  product = Сategory(id: id, name: name, imageURL: imageURl)
        
        return product
    }
    
    
    func getCategotyCount() -> Int {
        return categories.count
    }
    func getCategoryItems() -> Сategory {
        return items[index]
    }
    
    func getItemsCount() -> Int {
        return items.count
    }
    
    func getCategories() {
        CategoriesRepository.shared.getCategories { res in
            self.categories = res
        }
    }
    func getItems() {
        CategoriesRepository.shared.getCategories { res in
            self.items = res[self.index].сategories
        }
    }
}
