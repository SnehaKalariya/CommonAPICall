//
//  ViewController.swift
//  ModelClassExample
//
//  Created by kamal saboo on 21/03/18.
//  Copyright © 2018 kamal saboo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

   
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let john = Person(fullname:"sdf")
//        print(john)
        
        let commonApiObj = CommonAPICall()
        
        commonApiObj.getApiCall(url: "http://192.168.1.3/billdesk/sdk/generic_config2.json", completion: { (result) in
            print("result",result)
            do{
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: result)
                print(responseModel.options![0].id)
            }catch{
                print("does not parse")
            }
            
        }, failure: {(getError)
            in
            print("error msg \(getError)")
            
        })
        
 
     }
    func showResult(resultData: Data) {
       
    }
    func apiCall()  {
    
        // let jsonString = "https://uat.billdesk.com/MercOnline/SDKController?reqid=getSDKPaymentConfig&msg=AIRMTST|ARP1487335161888|NA|1.00|NA|NA|NA|INR|NA|R|airmtst|NA|NA|F|NA|NA|NA|NA|NA|NA|NA|http%3A%2F%2F202.189.247.38%2Fbilldesk%2Fpg_resp.php|2227231326&version=1.3.59"
        
        let Url = String(format: "http://192.168.1.3/billdesk/sdk/generic_config2.json")
        guard let serviceUrl = URL(string: Url) else { return }
        
        //        let msg = "AIRMTST|ARP1487335161888|NA|1.00|NA|NA|NA|INR|NA|R|airmtst|NA|NA|F|NA|NA|NA|NA|NA|NA|NA|http%3A%2F%2F202.189.247.38%2Fbilldesk%2Fpg_resp.php|2227231326"
        //        let paramString = String(format:"reqid=%@&msg=%@&version=%@","getSDKPaymentConfig",msg,"1.3.59")
        //        var request = URLRequest(url: serviceUrl)
        //        request.httpMethod = "POST"
        //        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        //        request.httpBody = paramString.data(using: String.Encoding.utf8)
        
        //        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameterDictionary, options: []) else {
        //            return
        //        }
        //        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with:serviceUrl) { (data,response, err) in
            
            guard let data = data else { return }
            
            do {
                
                //                // Swift 3/4
                //                guard  let jsonRespone = try JSONSerialization.jsonObject(with:data, options:.mutableContainers) as? [String:Any] else {return}
                //                  print(jsonRespone)
     
                let someDictionaryFromJSON = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
                print(someDictionaryFromJSON)
                //   let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)
                print(someDictionaryFromJSON)
                
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data)
                print(responseModel.options![0].id)
                
            } catch let err {
                print(err)
            }
            }.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timePass() {
        print("sdfsdlfj");
        
        /// commit from kedar sdlkfjsdlfkj skjj cvs
    }
    
}


protocol FullNamed {
    
    var fullname : String {get}
}

struct Person : FullNamed {
    
    var fullname: String
}


