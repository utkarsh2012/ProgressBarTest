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
    weak var detailView: DetailView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subview = DetailView(frame: view.frame)
        containerView.addSubview(subview)
        detailView = subview
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        detailView?.value = 60
    }
}

