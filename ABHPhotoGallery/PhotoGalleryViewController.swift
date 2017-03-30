//
//  PhotoGalleryViewController.swift
//  PhotoGallerySwift
//
//  Created by Алексей on 13.03.17.
//  Copyright © 2017 Fingers Media. All rights reserved.
//

import UIKit

class PhotoGalleryViewController: UIViewController {
    
    @IBOutlet var photoGalleryCollectionView: UICollectionView!
    
    public var photosArray = ["test.jpg","test.jpg","test.jpg","test.jpg","test.jpg","test.jpg","test.jpg","test.jpg"]
    
    let numberOfPhotosPerLine = 4.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Bundle(for: PhotoGalleryViewController.self).loadNibNamed("PhotoGalleryCollectionView", owner: self, options: nil)
        self.view.addSubview(self.photoGalleryCollectionView)
        self.photoGalleryCollectionView.frame = CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.photoGalleryCollectionView.dataSource = self as UICollectionViewDataSource
        self.photoGalleryCollectionView.delegate = self as UICollectionViewDelegateFlowLayout
        
        self.photoGalleryCollectionView.register(UINib(nibName: String(describing:PhotoGalleryCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing:PhotoGalleryCollectionViewCell.self))
        // Do any additional setup after loading the view.
    }
}

extension PhotoGalleryViewController:UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photosArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let photoGalleryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoGalleryCollectionViewCell", for: indexPath) as? PhotoGalleryCollectionViewCell
        photoGalleryCell?.photoGalleryCellImageView.image = UIImage(named: self.photosArray[indexPath.item])
        return photoGalleryCell!
    }
}

extension PhotoGalleryViewController:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sideOffset = 1.0
        let side = (Double(self.view.frame.size.width) - (sideOffset * 2) * numberOfPhotosPerLine)/numberOfPhotosPerLine
        return CGSize(width: side, height: side)
    }
    
}

