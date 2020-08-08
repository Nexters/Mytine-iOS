//
//  RetrospectTVCell.swift
//  mytine
//
//  Created by 황수빈 on 2020/08/08.
//  Copyright © 2020 황수빈. All rights reserved.
//

import UIKit

class RetrospectTVCell: UITableViewCell {

    @IBOutlet var saveBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        saveBtn.viewRounded(cornerRadius: 8)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
