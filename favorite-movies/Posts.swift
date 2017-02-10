//
//  Posts.swift
//  favorite-movies
//
//  Created by Shoenick on 1/23/17.
//  Copyright © 2017 Shoenick. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _urlPath: String!
    private var _postDesc: String!
    private var _plot: String!
    
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var urlPath: String {
        return _urlPath
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    var plot: String {
        return _plot
    }

    
    init(imagePath: String, title: String, urlPath: String, postDesc: String, plot: String) {
        self._imagePath = imagePath
        self._title = title
        self._urlPath = urlPath
        self._postDesc = postDesc
        self._plot = plot
    }
    
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._urlPath = aDecoder.decodeObjectForKey("url") as? String
        self._postDesc = aDecoder.decodeObjectForKey("postDesc") as? String
        self._plot = aDecoder.decodeObjectForKey("plot") as? String
        
    
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._urlPath, forKey: "url")
        aCoder.encodeObject(self._postDesc, forKey: "postdesc")
        aCoder.encodeObject(self._plot, forKey: "plot")
    }

}