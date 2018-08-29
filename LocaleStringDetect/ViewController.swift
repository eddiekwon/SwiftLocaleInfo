//
//  ViewController.swift
//  LocaleStringDetect
//
//  Created by eddiek on 28/08/2018.
//  Copyright © 2018 Eddie Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("CurrentLocale:\(self.makeCurrentLocale())")
    }

    /**
     
     현재 시간을 ==> 2018-08-28T13:19:47.412+09:00[Asia/Seoul] 로 만들어 줌
     
     - returns: "2018-08-28T13:19:47.412+09:00[현재로케일]"
     
    */
    func makeCurrentLocale()->String{
        let formatter = DateFormatter()
        
        //2018-08-28T13:19:47.412+09:00 Format
        formatter.dateFormat = "YYYY-MM-dd'T'HH:mm:ss.SSSxxxxx"
        formatter.timeZone = TimeZone.autoupdatingCurrent
        formatter.locale = Locale.current
        
        // https://stackoverflow.com/questions/27053135/how-to-get-a-users-time-zone
        let timeZoneString = TimeZone.current.identifier
        
        //"[Asia/Seoul]" , "[Europe/Moscow]" 등을 붙임
        let nowString = formatter.string(from: Date()) + "[" + timeZoneString + "]"
        
        return nowString
        
    }
    
    func test(){
       
    }
}

