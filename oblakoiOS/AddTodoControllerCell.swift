//
//  ControllerCell.swift
//  oblakoiOS
//
//  Created by Nikita on 07/08/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//

import UIKit

class AddTodoControllerCell: UITableViewCell
{
    
    @IBOutlet weak var todoTitleTextField: UITextField!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
}

extension UITextField
{
    open override func draw(_ rect: CGRect)
    {
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.masksToBounds = true
    }
}

