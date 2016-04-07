//
//  PushViewController.swift
//  RentST
//
//  Created by Justine on 16/4/6.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationView()
        //设置该界面背景色
        self.view.backgroundColor = UIColor.whiteColor()
        
        
//        //push界面 顶部 增加 2个按钮 1个是左边的 关闭页面，另1个是右边的 确认按钮
//        let navbtn1 = UIButton(frame: CGRect(x: 0, y: 20, width: 40, height: 20))
//        let navbtn2 = UIButton(frame: CGRect(x: SCREEN_WIDTH - 50, y: 20, width: 40, height: 20))
//        //设置navbtn的相关信息
//        navbtn1.titleLabel?.text = "关闭"
//        navbtn2.titleLabel?.text = "发布"
//        navbtn1.titleLabel?.textColor = MAIN_RED
//        navbtn2.titleLabel?.textColor = MAIN_RED
//        
//        self.view.addSubview(navbtn1)
//        self.view.addSubview(navbtn2)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //为navbtn 添加方法
    func setNavigationView()  {
        let navigationView = UIView(frame: CGRect(x: 0, y: -20, width: SCREEN_WIDTH, height: 65))
        navigationView.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.addSubview(navigationView)
        
        
        let addBookBtn = UIButton(frame: CGRect(x: 20, y: 20, width: SCREEN_WIDTH, height: 45))
        addBookBtn.setImage(UIImage(named: "plus circle"), forState: UIControlState.Normal)
        addBookBtn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        addBookBtn.setTitle("  新建输评", forState: UIControlState.Normal)
        addBookBtn.titleLabel?.font = UIFont(name: "宋体", size: 15)
        addBookBtn.contentHorizontalAlignment = .Left
        addBookBtn.addTarget(self, action: #selector(PushViewController.pushNewBook), forControlEvents: UIControlEvents.TouchUpInside)
        
        navigationView.addSubview(addBookBtn)
    }
    
    func pushNewBook() -> Void {
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
