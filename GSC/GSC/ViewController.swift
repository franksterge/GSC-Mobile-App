//
//  ViewController.swift
//  GSC
//
//  Created by GeFrank on 3/26/21.
//

import UIKit
import MaterialComponents

class ViewController: UINavigationController {

    let tabBar = MDCBottomNavigationBar()
    let fab = MDCFloatingButton(shape: .default)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureBottomNavigationBar()
        configureFloatingButton()

        
    }

    func configureBottomNavigationBar() {
        let size = self.tabBar.sizeThatFits(view.bounds.size)
        let tabBarFrame = CGRect(x: 0,
                                 y: view.bounds.height - 75,
                                 width: size.width,
                                 height: 75)
        self.tabBar.frame = tabBarFrame
        self.tabBar.barTintColor = .white
        self.tabBar.selectedItemTintColor = UIColor(red: 0, green: 0.49, blue: 1, alpha: 0.5)
        self.tabBar.titleVisibility = MDCBottomNavigationBarTitleVisibility.selected
        self.tabBar.alignment = MDCBottomNavigationBarAlignment.justifiedAdjacentTitles
        let homeItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home"), tag: 0)
        let readingItem = UITabBarItem(title: "Readings", image: UIImage(named: "ic_read"), tag: 0)
        let chatItem = UITabBarItem(title: "Chat", image: UIImage(named: "ic_chat"), tag: 0)
        let profileItem = UITabBarItem(title: "My Profile", image: UIImage(named: "ic_user"), tag: 0)
        self.tabBar.items = [homeItem, readingItem, chatItem, profileItem]
        self.tabBar.selectedItem = homeItem
        self.view.addSubview(self.tabBar)
        
    }
    
    func configureFloatingButton() {
        self.fab.backgroundColor = UIColor(red: 0, green: 0.341, blue: 0.698, alpha: 1)
        self.fab.setImage(UIImage(named: "ic_add"), for: .normal)
        self.fab.minimumSize = CGSize(width: 64, height: 48)
        self.fab.accessibilityLabel = "CheckIn"
        let buttonVerticalInset =
            min(0, -(self.fab.bounds.height) / 2);
        let buttonHorizontalInset =
            min(0, -(self.fab.bounds.width) / 2);
        self.fab.hitAreaInsets =
            UIEdgeInsets(top: buttonVerticalInset, left: buttonHorizontalInset,
                         bottom: buttonVerticalInset, right: buttonHorizontalInset);
        self.view.addSubview(self.fab)
    }

}

