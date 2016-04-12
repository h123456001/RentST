//
//  RankViewController.swift
//  RentST
//
//  Created by Justine on 16/4/6.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

class RankViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置Rank界面的背景色
        self.view.backgroundColor = UIColor.whiteColor()
        //定义一个标签,并布局
        let lable = UILabel(frame: CGRect(x: SCREEN_WIDTH/4, y: SCREEN_HEIGHT/2, width: 200, height: 60))
        lable.text = "我是lable。。。"
        lable.sizeToFit()
        lable.font = UIFont(name: MY_FONT, size: 17)
        lable.textColor = UIColor.blackColor()
        self.view.addSubview(lable)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
