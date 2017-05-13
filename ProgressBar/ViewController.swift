//
//  ViewController.swift
//  ProgressBar
//
//  Created by Utkarsh Sengar on 5/13/17.
//  Copyright © 2017 Area42. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let detailView = DetailView(frame: view.frame)
        detailView.value = 60
        containerView.addSubview(detailView)
    }
}

