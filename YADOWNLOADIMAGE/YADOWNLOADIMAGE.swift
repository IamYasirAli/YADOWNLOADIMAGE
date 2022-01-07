//
//  YADOWNLOADIMAGE.swift
//  YADOWNLOADIMAGE
//
//  Created by Yasir on 06/01/2022.
//

import UIKit
import Alamofire



public final class YADOWNLOADIMAGE {
    public static var shared = YADOWNLOADIMAGE()
    
    private init () {}
    public static func getImage(path: String, completion: @escaping (_ image:UIImage?, _ error: Error?) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            AF.request( path,method: .get).response {  response in
                DispatchQueue.main.async {
                    switch response.result {
                    case .success(let responseData):
                        if let data = responseData {
                            completion(UIImage(data: data, scale:1),nil)
                        } else {
                            completion(nil,response.error)
                        }
                    case .failure(let error):
                        completion(nil,error)
                    }
                }
            }
        }
    }
}
