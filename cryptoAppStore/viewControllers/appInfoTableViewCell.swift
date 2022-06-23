//
//  appInfoTableViewCell.swift
//  cryptoAppStore
//
//  Created by Ashin Wang on 2022/4/21.
//

import UIKit

class appInfoTableViewCell: UITableViewCell {
    //圖片
    @IBOutlet weak var appImageView: UIImageView!
    //標題
    @IBOutlet weak var appTitle: UILabel!
    //副標
    @IBOutlet weak var appSubTitle: UILabel!
    //按鈕副標
    @IBOutlet weak var detailText: UILabel!
    //按鈕
    @IBOutlet weak var appBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
