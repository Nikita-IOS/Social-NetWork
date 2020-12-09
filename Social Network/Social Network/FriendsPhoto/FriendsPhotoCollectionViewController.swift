//
//  FriendsPhotoCollectionViewController.swift
//  Social Network
//
//  Created by Nikita Gras on 05.12.2020.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendsPhotoCollectionViewController: UICollectionViewController {
    
    var friendPhoto = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendPhoto.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsPhotoCollectionViewCell", for: indexPath) as! FriendsPhotoCollectionViewCell
        cell.friendImage.image = UIImage(named: friendPhoto[indexPath.row])
        return cell
    }

}
