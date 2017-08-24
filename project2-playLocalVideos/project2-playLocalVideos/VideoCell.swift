//
//  VideoCell.swift
//  project2-playLocalVideos
//
//  Created by ASong on 2017/8/24.
//  Copyright © 2017年 ASong. All rights reserved.
//

import UIKit


struct video {
    let image: String
    let title: String
    let source: String
}



class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoTitleLable: UILabel!

    @IBOutlet weak var videoSourceLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
