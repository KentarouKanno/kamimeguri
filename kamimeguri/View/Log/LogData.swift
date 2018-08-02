//
//  LogData.swift
//  kamimeguri
//
//  Created by Kentarou on 2018/07/23.
//  Copyright © 2018年 Chen Rui. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class LogData {
    
    var id: Int?
    var scencePhoto: UIImage?
    var syuinPhoto: UIImage?
    var kujiPhoto: UIImage?
    
    var postYear: String = ""
    var postDate: String = ""
    var postWeekly: String = ""
    
    var postedText: String = ""
    var postTempleName: String = ""
    var postTempleAddress: String = ""
    
    var images: [UIImage?] {
        return [scencePhoto, syuinPhoto, kujiPhoto]
    }
    
    var dateString: String {
        return postYear + postDate
    }
    
    init(diary: Diary) {
        id = diary.id
        if let scencePhoto = diary.scencePhoto {
            self.scencePhoto = UIImage(data: scencePhoto)
        }
        if let syuinPhoto = diary.syuinPhoto {
            self.syuinPhoto = UIImage(data: syuinPhoto)
        }
        if let kujiPhoto = diary.kujiPhoto {
            self.kujiPhoto = UIImage(data: kujiPhoto)
        }
        
        postTempleName = diary.postTempleName
        postTempleAddress = diary.postTempleAddress
        if let text = diary.DiaryText {
            postedText = text
        }
        
        // postYear = diary.
        // postDate
        // kujiPhoto
    }
    
}
