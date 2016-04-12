//
//  PhotoPickerViewController.swift
//  RentST
//
//  Created by Justine on 16/4/11.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

protocol PhtotPickerDelegate {
    func getImageFromPicker(image:UIImage)
}

class PhotoPickerViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    //定义一个UIAlertController     alert
    var alert:UIAlertController?
    //定义一个picker用于 打开相机或者打开相册
    var picker:UIImagePickerController?
    
    var delegate:PhtotPickerDelegate!
    //父类初始化
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        //初始化
        super.init(nibName: nil, bundle: nil)
        //将背景设置为透明
        self.modalPresentationStyle = .OverCurrentContext
        //将PhotoPickerController背景色清除   ，结合上一句代码 将显示 上一层的背景
        self.view.backgroundColor = UIColor.clearColor()
        
        //self.alert = UIAlertController(title: "选择操作", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        self.picker = UIImagePickerController()
        //截图功能 开启否
        self.picker?.allowsEditing = false
        self.picker?.delegate = self
        print("PhotoPickerViewController_init()")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad()")
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        print("IN-----viewDidAppear()")
        super.viewDidAppear(animated)
        print("viewDidAppear()")
        
        if (self.alert == nil) {
            print("alert是正在创建alert")
            self.alert = UIAlertController(title: "请选择操作", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
            let alertaction1 = UIAlertAction(title: "从相册选择", style: .Default, handler: { (action) ->Void in self.locolphoto()})
            let alertaction2 = UIAlertAction(title: "使用相机", style: .Default, handler: { (action) ->Void in self.takePhoto()})
            let alertaction3 = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: { (action) in
            self.dismissViewControllerAnimated(true, completion: nil)})
            
            self.alert!.addAction(alertaction1)
            self.alert!.addAction(alertaction2)
            self.alert!.addAction(alertaction3)
            self.presentViewController(self.alert!, animated: true, completion: nil)
            print("已经将alert添加到界面")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    /**
     打开相册
     */
    func locolphoto(){
        self.picker?.sourceType = .PhotoLibrary
        self.presentViewController(self.picker!, animated: true) {}
    }
    //取消打开相册
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.picker?.dismissViewControllerAnimated(true, completion: {})
    }
    //选择照片
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.picker?.dismissViewControllerAnimated(true, completion: {
            self.delegate.getImageFromPicker(image)
            //选择好后dismiss Alert界面
            self.dismissViewControllerAnimated(true, completion: {})
        })
    }
    /**
     * 打开相机
     */
    func takePhoto(){
        //检测是否存在相机
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            self.picker?.sourceType = .Camera
            self.presentViewController(self.picker!, animated: true, completion: {})
        }
        else{
            let alertview = UIAlertController(title: "此机型无相机", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            alertview.addAction(UIAlertAction(title: "关闭", style: UIAlertActionStyle.Cancel, handler: { (action) ->Void in
                //单击关闭后dismiss Alert界面
                self.dismissViewControllerAnimated(true, completion: { 
                    
                })}))
            self.presentViewController(alertview, animated: true, completion: {(action)->Void in })
        }
      
    }

        

    

    
   
}
