//
//  DishesRepository.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import Foundation
import Alamofire

class DishesRepository {
    static let shared = CategoriesRepository()
   
    func getDishes(compilationHandler: @escaping(([DishesModel]) -> Void)) {
       
        
        let url = AppUrl()
        AF.request(url.dishesURL).responseDecodable(of: [DishesModel].self) { res in
            guard let data = res.value else { return }
            compilationHandler(data)
        }
    }
}
