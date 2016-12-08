//
//  ViewController.swift
//  myswift
//
//  Created by FLE on 2016/12/2.
//  Copyright © 2016年 FLE. All rights reserved.
//

import UIKit
import AFNetworking
class ViewController: UIViewController {

    @IBOutlet weak var labeeee: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
        let rese = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        rese.text = "udsff"
        var rrr:[String]?
        rrr?.append("jj")
        rrr?.append(contentsOf:["dd","ddd"])
        var ra   = ["ueuu","djh"]
        let buttn = UIButton.init(type: .roundedRect)
        buttn.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        view.addSubview(buttn)
        view.addSubview(rese)
        URLSession.shared.dataTask(with: URL.init(string: "udfhb")!, completionHandler: {(Data, URLResponse, Error) -> Void in
            
            
        })
        URLSession.shared.downloadTask(with: URL.init(string: "ydf")!, completionHandler: {(URL, URLResponse, Error) -> Void in
            
            
        })
        DispatchQueue.global().sync {
            
        }
        DispatchQueue.main.sync { 
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

