//
//  ViewController.swift
//  SampleViw
//
//  Created by 山崎友弘 on 2015/08/11.
//  Copyright (c) 2015年 fsail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _label:UILabel!
    var _view:UIView!
    var _flag1:Bool! = true
    var _flag2:Bool! = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let imageView = UIImageView(image: UIImage(named: "aiko.png"))
        self.view.addSubview(imageView)

        _view = UIView(frame: CGRectMake(10, 150, 120, 100))
        _view.backgroundColor = UIColor.redColor()
        self.view.addSubview(_view)
        
        _label = UILabel()
        _label.font = UIFont.boldSystemFontOfSize(30)
        _label.text = "山崎だよ"
        _label.textColor = UIColor.orangeColor()
        _label.sizeToFit()
        _label.center = CGPointMake(230, 180)
        self.view.addSubview(_label)
        
        let button1 = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        button1?.titleLabel?.font = UIFont.boldSystemFontOfSize(20)
        button1?.titleLabel?.textColor = UIColor.blueColor()
        button1?.setTitle("ボタン１", forState: UIControlState.Normal)
        button1?.sizeToFit()
        button1?.center = CGPointMake(70, 300)
        button1?.addTarget(self, action: "onTouch1:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1!)
        
        let button2 = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        button2?.titleLabel?.font = UIFont.boldSystemFontOfSize(20)
        button2?.titleLabel?.textColor = UIColor.blueColor()
        button2?.setTitle("ボタン２", forState: UIControlState.Normal)
        button2?.sizeToFit()
        button2?.center = CGPointMake(250, 300)
        button2?.addTarget(self, action: "onTouch2:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2!)
    }
    
    func onTouch1(pSender:UIButton){
        if(_flag1 == true){
            _view.backgroundColor = UIColor.brownColor()
        }else{
            _view.backgroundColor = UIColor.redColor()
        }
        _flag1 = !_flag1
    }
    
    func onTouch2(pSender:UIButton){
        if(_flag2 == true){
            _label.text = "aikoだよ"
        }else{
            _label.text = "山崎だよ"
        }
        _flag2 = !_flag2
    }

}

