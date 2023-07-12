//
//  MainTabBarController.swift
//  OnlineOrderingFood_MVVM
//
//  Created by Xursandbek Qambaraliyev on 11/07/23.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        generateTabBar()
        setTabBarAppearance()
        tabBar.backgroundColor = .white
    }
    
    private func generateTabBar() {
        viewControllers = [
            
            generateVC(viewController: HomeViewController(),
                       tittle: "Главная",
                       image: UIImage(systemName: "house.fill")
            ),
            generateVC(viewController: SearchViewController(),
                       tittle: "Поиск",
                       image: UIImage(systemName: "person.fill")
            ),
            generateVC(viewController: BaseViewController(),
                       tittle: "Корзина",
                       image: UIImage(systemName: "slider.horizontal.3")
            ),
            generateVC(viewController: AccountViewController(),
                       tittle: "Аккаунт",
                       image: UIImage(systemName: "slider.horizontal.3")
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, tittle: String, image: UIImage?) -> UIViewController {
        
        viewController.tabBarItem.title = tittle
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        let positsionOnX: CGFloat = 10
        let positsionOnY: CGFloat = 25
        let width = tabBar.bounds.width - positsionOnX * 2
        let height = tabBar.bounds.height + positsionOnY
        
        let roundLayer = CAShapeLayer()
        
        let bezirePath = UIBezierPath(
            roundedRect: CGRect(
                x: positsionOnX,
                y: tabBar.bounds.midY - positsionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezirePath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        tabBar.backgroundColor = .white
        tabBar.barTintColor = .white
        tabBar.tintColor = .white
    }


}
