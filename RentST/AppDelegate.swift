//
//  AppDelegate.swift
//  RentST
//
//  Created by Justine on 16/4/6.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //定义设备大小
        self.window = UIWindow(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        //底部导航栏
        let tabbarController = UITabBarController()
        
        //定义各个界面 Navagation 首选显示
        let rankController = UINavigationController(rootViewController: RankViewController())
        let searchController = UINavigationController(rootViewController: SearchViewController())
        let pushController = UINavigationController(rootViewController: PushViewController())
        let circleController = UINavigationController(rootViewController: CircleViewController())
        let moreController = UINavigationController(rootViewController: MoreViewController())
        
        //定义rankController，searchController，pushController，circleController，moreController界面talbebarItem
        tabbarController.viewControllers = [rankController,searchController,pushController,circleController,moreController]
        //定义Item1 标题  图片 选中后的图片，后面以此类推
        let tabbarItem1 = UITabBarItem(title: "排行榜", image: UIImage(named: "bio"), selectedImage: UIImage(named: "bio_red"))
        let tabbarItem2 = UITabBarItem(title: "发现", image: UIImage(named: "timer 2"), selectedImage: UIImage(named: "timer 2_red"))
        let tabbarItem3 = UITabBarItem(title: "", image: UIImage(named: "pencil"), selectedImage: UIImage(named: "pencil_red"))
        let tabbarItem4 = UITabBarItem(title: "圈子", image: UIImage(named: "users two-2"), selectedImage: UIImage(named: "users two-2_red"))
        let tabbarItem5 = UITabBarItem(title: "更多", image: UIImage(named: "more"), selectedImage: UIImage(named: "more_red"))
        
        //
        rankController.tabBarItem = tabbarItem1
        searchController.tabBarItem = tabbarItem2
        pushController.tabBarItem = tabbarItem3
        circleController.tabBarItem = tabbarItem4
        moreController.tabBarItem = tabbarItem5
        //设置tablebar字体颜色
        rankController.tabBarController?.tabBar.tintColor = MAIN_RED
        //将页面呈现
        self.window?.rootViewController = tabbarController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

