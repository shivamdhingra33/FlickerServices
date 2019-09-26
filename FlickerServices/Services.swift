//
//  Services.swift
//  FlickerServices
//
//  Created by Shivam Dhingra on 9/27/19.
//  Copyright © 2019 Shivam Dhingra. All rights reserved.
//

import UIKit
import Alamofire
import PhotoModel

public class FlickerService {
    func fetchPhotos(fromUrlComponents urlComponent: URLComponents, successCallback: @escaping ((PhotoResponseModel?) -> Void), errorCallback: @escaping ((Error) -> Void) ) {
        AF.request(URLRequest(url: urlComponent.url!)).response { (response) in
            guard let data = response.data else {return}
            let photoResponse = try? JSONDecoder().decode(PhotoResponseModel.self, from: data)
            successCallback(photoResponse)
        }
    }
}
