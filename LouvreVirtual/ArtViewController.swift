//
//  ArtViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 14/06/17.
//  Copyright © 2017 rlisboars. All rights reserved.
//

import UIKit

class ArtViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var tvDescription: UITextView!
    
    //MARK: - Properties
    var art: Artwork!
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        lbName.text = art.name
        ivPhoto.image = UIImage(named: art.imageName)
        tvDescription.text = art.desc
        tvDescription.scrollRangeToVisible(NSRange(location: 0, length: 0))
    }

    //MARK: - IBActions
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
