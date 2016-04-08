//
//  pushNewBookController.swift
//  RentST
//
//  Created by Justine on 16/4/7.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

class pushNewBookController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //UIbutton当照片封面
        let coverbtn = UIButton(frame: CGRect(x: 10, y: 20, width: 114, height: 140))
        coverbtn.imageView?.image = UIImage(named: "star-icon")
        //UITextField当书名
        let bookname = HoshiTextField(frame: CGRect(x: 120, y: 40, width: SCREEN_WIDTH - 114-20, height: 40))
        bookname.placeholder = "书名"
        bookname.borderActiveColor = UIColor.grayColor()
        bookname.borderInactiveColor = UIColor.grayColor()
        //UITextField当作者
        let bookwriter = HoshiTextField(frame: CGRect(x: 120, y: 80, width: SCREEN_WIDTH - 114-20, height: 40))
        bookwriter.placeholder = "作者"
        bookwriter.borderActiveColor = UIColor.grayColor()
        bookwriter.borderInactiveColor = UIColor.grayColor()
        
        self.view.addSubview(coverbtn)
        self.view.addSubview(bookname)
        self.view.addSubview(bookwriter)
        coverbtn.addTarget(self, action: #selector(btnTip), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }
    func btnTip(btn:UIButton){
        print("click btn")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    func close(){
        self.dismissViewControllerAnimated(true) { 
            
        }
    }
    func sure(){
    
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
