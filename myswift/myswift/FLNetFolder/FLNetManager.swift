//
//  FLNetManager.swift
//  myswift
//
//  Created by FLE on 2016/12/7.
//  Copyright © 2016年 FLE. All rights reserved.
//

import UIKit
import AFNetworking
enum FLMethod {
    case GET
    case POST
}

class FLNetManager: AFHTTPSessionManager {

    static let sharedInstance = FLNetManager()
    

    var token:String?
    
    func tokenInit(method:FLMethod = .GET, url:String ,paragram:[String:AnyObject]?,end:@escaping (_:AnyObject?,_:Bool) -> ()) {
        
        guard let token = token else {
            end(nil,false)
            return;
        }
        var param = paragram
        if param == nil {
            param = [String:AnyObject]()
        }
        param!["token"] = token as AnyObject?
        request(url: url, paragram: param, end: end)
        
    }
    
    func request(method:FLMethod = .GET, url:String ,paragram:[String:AnyObject]?,end:@escaping (_:AnyObject?,_:Bool) -> ()){
        
        let successd = {(task:URLSessionDataTask,json:Any?)-> Void in
            end(json as AnyObject?,true)
        }
        let failure = {(task:URLSessionDataTask?,error:Error)->Void in
            if(task?.response as! HTTPURLResponse).statusCode == 403{
            
            }
            end(nil,false)
        }
        
        if method == .GET{
           
         get(url, parameters: paragram, progress: nil, success: successd, failure: failure)
        }else{
        post(url, parameters: paragram, progress: nil, success: successd, failure: failure)
        }
    }
    
}
extension FLNetManager {
 
    func objcetList(end:@escaping (_:[String:AnyObject]?,_:Bool)->()) {
        let urlstring = "https://api.weibo.com/2/statuses/home_timeline.json"
        tokenInit(url: urlstring, paragram: nil, end: {(obje,isOk) in
            
            let result = obje?["state"] as![String:AnyObject]
        end(result,isOk)
        
        })
    
    }
}










