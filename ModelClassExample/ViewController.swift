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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


protocol FullNamed {
    
    var fullname : String {get}
}

struct Person : FullNamed {
    
    var fullname: String
}


