//
//  ViewController.swift
//  CFiAdInnerInterstitalViewSwiftSample
//
//  Created by CF-NB on 2019/8/6.
//  Copyright © 2019年 CF-NB. All rights reserved.
//

import UIKit
import iMFAD

class ViewController: UIViewController {

    var scroll:UIScrollView!
    var fullsize:CGSize!
    var lable:UILabel!
    var minneritst:MFAdInnerInterstitalView?
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll = UIScrollView()
        fullsize = UIScreen.main.bounds.size
        scroll.frame = CGRect(x: 0, y: 20, width: fullsize.width, height: fullsize.height - 20);
        scroll.contentSize = CGSize(width: fullsize.width, height: fullsize.height*3);
        scroll.isScrollEnabled = true;
        self.view.addSubview(scroll);
        
        minneritst = MFAdInnerInterstitalView.init(aGpoint: CGPoint(x: 0, y: fullsize.height + 10));
        minneritst?.bannerId = "9702";
        minneritst?.delegate = self;
        minneritst?.debugInfo(true);
        minneritst?.requestInnerFullScreenAD();
        
        scroll.addSubview(minneritst!)
        
        //Remarks
        lable = UILabel()
        lable.frame = CGRect(x: 0, y: fullsize.height - 100, width:fullsize.width , height: 50);
        lable.text = "Please slide up";
        lable.font = UIFont.boldSystemFont(ofSize: 20);
        lable.textColor = UIColor.red;
        scroll.addSubview(lable)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
extension ViewController:MFAdInnerInterstitalViewDelegate{
    func onRequestInnerItstAdSuccess() {
        print("ClickForce : onRequestInnerItstAdSuccess");
        minneritst?.show();
    }
    
    func onRequestInnerItstAdFail() {
        print("ClickForce : onRequestInnerItstAdFail");
    }
    
    func onClickInnerItst() {
        print("ClickForce : onClickInnerItst");
    }
}

