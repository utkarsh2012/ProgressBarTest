//
//  DetailView.swift
//  ProgressBar
//
//  Created by Utkarsh Sengar on 5/13/17.
//  Copyright © 2017 Area42. All rights reserved.
//

import UIKit

class DetailView: UIView {

    var pgBar: CustomProgressBar?
    var value: Int? {
        didSet {
            progress(value: value!)
        }
    }
    
    @IBOutlet weak var progressContainer: UIView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubview()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubview()
    }
    
    func initSubview(){
        let nib = UINib(nibName: "DetailView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        addSubview(progressContainer)
        
        draw()
    }
    
    func draw() {
        pgBar = CustomProgressBar(width: progressContainer.bounds.width, height: progressContainer.bounds.height)
        progressContainer.addSubview(pgBar!)
        pgBar?.draw()
    }
    
    func progress(value: Int) {
        pgBar?.progress(incremented: CGFloat(value))
    }
}
