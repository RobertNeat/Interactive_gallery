//  GalleryImage.swift
//  laboratorium_9_zadanie_1

import Foundation


import UIKit

struct GalleryImage {
    var title: String
    var image:UIImage?
}

let gallery: [GalleryImage] = [
    GalleryImage(title: "Apartment",image: UIImage(named: "apartment")),
    GalleryImage(title: "Bird",image: UIImage(named: "bird")),
    GalleryImage(title: "Color parrots",image: UIImage(named: "color_parrot")),
    GalleryImage(title: "Corgi",image: UIImage(named: "corgi")),
    GalleryImage(title: "Black cat",image: UIImage(named: "dark_cat")),
    GalleryImage(title: "Green parrot",image: UIImage(named: "green_parrot")),
    GalleryImage(title: "Home",image: UIImage(named: "home")),
]
