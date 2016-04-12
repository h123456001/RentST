//
//  pushNewBookController.swift
//  RentST
//
//  Created by Justine on 16/4/7.
//  Copyright © 2016年 hxb. All rights reserved.
//

import UIKit

class pushNewBookController: UIViewController,BookTitleDelegate,PhtotPickerDelegate {
    var bookTitle:BookTitleView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.bookTitle = BookTitleView(frame: CGRect(x: 0, y: 40, width: SCREEN_WIDTH, height: 160))
        self.bookTitle?.delegate = self
        
        self.view.addSubview(self.bookTitle!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /**
     bookTitleViewDelegate
     */
    func choiceCover() {
        print("choiceCoverDelegate")
        let vc = PhotoPickerViewController(nibName: nil, bundle: nil)
        self.presentViewController(vc, animated: true) { 
            
        }
        vc.delegate = self
    }
    
    /**
     photopickerDelegate
     */
    func getImageFromPicker(image: UIImage) {
        self.bookTitle?.BookCover?.setImage(image, forState: .Normal)
    }
    func close(){
        self.dismissViewControllerAnimated(true) { 
            
        }
    }
    func sure(){
    
    }

}
