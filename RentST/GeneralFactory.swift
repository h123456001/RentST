//
//  GeneralFactory.swift
//  RentST
//
//  Created by Justine on 16/4/7.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit
class GeneralFactory: NSObject {
    static func addNavigationBarWithTitle(target:UIViewController,title1:String="关闭",title2:String="确认")
    {
        //push界面 顶部 增加 2个按钮 1个是左边的 关闭页面，另1个是右边的 确认按钮
        //navbtn1布局
        let navbtn1 = UIButton(frame: CGRect(x: 10, y: 20, width: 40, height: 20))
        //navbtn1设置标题 和 状态
        navbtn1.setTitle(title1, forState: .Normal)
        //navbtn1设置标题 颜色 和 状态
        navbtn1.setTitleColor(MAIN_RED ,forState: UIControlState.Normal)
        //navbtn1设置文字对齐方式  左对齐
        navbtn1.contentHorizontalAlignment = .Left
        //navbtn1设置字体 宋体 大小14
        navbtn1.titleLabel?.font = UIFont(name: "宋体", size: 14)
        //将navbtn1添加到target视图中
        target.view.addSubview(navbtn1)
        //target.navigationController?.navigationBar.addSubview(navbtn1)
        //push界面 顶部 增加 2个按钮 1个是左边的 关闭页面，另1个是右边的 确认按钮
        
        
        
        let navbtn2 = UIButton(frame: CGRect(x: SCREEN_WIDTH - 50, y: 20, width: 40, height: 20))
        navbtn2.setTitle(title2, forState: .Normal)
        navbtn2.setTitleColor(MAIN_RED ,forState: UIControlState.Normal)
        navbtn2.contentHorizontalAlignment = .Right
        navbtn2.titleLabel?.font = UIFont(name: "宋体", size: 14)
        //target.view.addSubview(navbtn2)
        target.view.addSubview(navbtn2)
        navbtn1.addTarget(target, action: Selector("close"), forControlEvents: UIControlEvents.TouchUpInside)
        navbtn2.addTarget(target, action: Selector("sure"), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    
}
