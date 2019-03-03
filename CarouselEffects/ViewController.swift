//
//  ViewController.swift
//  CarouselEffects
//
//  Created by Meenal Kewat on 3/3/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var actressImage = [UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario"),UIImage(named: "Natalie Portman"),UIImage(named: "Scarlett Johansson"),UIImage(named: "jennifer"),UIImage(named: "Emma Stone"),UIImage(named: "c"),UIImage(named: "Alexandra Daddario")]

    @IBOutlet weak var iCarousalView: iCarousel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iCarousalView.type = .timeMachine
        iCarousalView.contentMode = .scaleAspectFill
        iCarousalView.isPagingEnabled = true
    
    }
}

extension ViewController: iCarouselDelegate,iCarouselDataSource{
    func numberOfItems(in carousel: iCarousel) -> Int {
        return actressImage.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imageView:UIImageView!
        if view == nil{
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
            imageView.contentMode = .scaleAspectFill
        }else{
            imageView = view as? UIImageView
        }
        imageView.image = actressImage[index]
        return imageView
    }
    
    
}

