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
    var value: Int?{
        didSet {
            progress(value: value!)
            self.layoutSubviews()
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
        self.pgBar = CustomProgressBar(width: progressContainer.bounds.width, height: progressContainer.bounds.height)
        self.progressContainer.addSubview(self.pgBar!)
        self.pgBar?.draw()
    }
    
    func progress(value: Int) {
        self.pgBar?.progress(incremented: CGFloat(value))
    }
}
