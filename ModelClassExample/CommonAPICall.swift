//
//  CommonAPICall.swift
//  ModelClassExample
//
//  Created by Kamal Saboo on 26/04/18.
//  Copyright © 2018 kamal saboo. All rights reserved.
//

import UIKit

class CommonAPICall: NSObject {

    func getApiCall(url:String,completion:@escaping (_ result : Data)-> Void,failure:@escaping ((_ getError: Error) -> Void)) {
        print("abcd")
        let Url = url//String(format: "http://192.168.1.3/billdesk/sdk/generic_config2.json")
        guard let serviceUrl = URL(string: Url) else { return }
        
        URLSession.shared.dataTask(with: serviceUrl) { (data, response, err) in
          
            guard let data = data else { return failure(err!) }
            completion(data)
            
        }.resume()
    }
}
