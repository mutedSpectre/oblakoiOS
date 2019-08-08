//
//  CustomCheckboxCell.swift
//  oblakoiOS
//
//  Created by Nikita on 07/08/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import M13Checkbox
import UIKit

class CustomCheckboxCell: UITableViewCell {
    
    @IBOutlet weak var todoCheckbox: M13Checkbox!
    @IBOutlet weak var todoTitle: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        todoCheckbox.boxType = .square
        todoCheckbox.stateChangeAnimation = .fill
        todoCheckbox.checkmarkLineWidth = 3
        todoCheckbox.cornerRadius = 0
        
        
    }
    
}
