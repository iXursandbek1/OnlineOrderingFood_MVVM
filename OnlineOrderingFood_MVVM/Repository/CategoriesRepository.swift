//
//  CategoriesRepository.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import Foundation
import Alamofire

class CategoriesRepository {
    static let shared = CategoriesRepository()
   
    func getCategories(compilationHandler: @escaping(([CategoriesModel]) -> Void)) {
       
        
        let url = AppUrl()
        AF.request(url.categoriesURL).responseDecodable(of: [CategoriesModel].self) { res in
            guard let data = res.value else { return }
            compilationHandler(data)
        }
    }
}
