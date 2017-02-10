//
//  AddMovieVC.swift
//  favorite-movies
//
//  Created by Shoenick on 1/25/17.
//  Copyright © 2017 Shoenick. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var plotField: UITextField!
    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var postImg: UIImageView!

    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    @IBAction func AddMovieBtn(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func AddMoviePressed(sender: AnyObject) {
        if let title = titleField.text, let urlField = urlField.text, let descField = descField.text, let plotField = plotField.text,let img = postImg.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(img)
            
            let post = Post(imagePath: imgPath, title: title, urlPath: urlField, postDesc: descField, plot: plotField)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func CancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
    
    
}
