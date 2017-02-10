//
//  PostCell.swift
//  favorite-movies
//
//  Created by Shoenick on 1/23/17.
//  Copyright © 2017 Shoenick. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var urlLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius = 15
        postImg.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        urlLbl.text = post.urlPath
        postImg.image = DataService.instance.imageForPath(post.imagePath)
        descLbl.text = post.description
    }


}
