//
//  appDetailTableViewController.swift
//  cryptoAppStore
//
//  Created by Ashin Wang on 2022/4/20.
//

import UIKit

class appDetailTableViewController: UITableViewController {
    @IBOutlet var lineText: [UILabel]!
    
    //Top Info
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailSubTitle: UILabel!
    //按鈕
    @IBOutlet weak var detailGetBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    
    @IBOutlet weak var detailSubText: UILabel!
    
    //Middle Info
    
    //rating
    @IBOutlet weak var ratingCountText: UILabel!
    @IBOutlet weak var ratingCoreText: UILabel!
    @IBOutlet var starImageView: [UIImageView]!
    
    //age
    @IBOutlet weak var ageTitle: UILabel!
    @IBOutlet weak var ageInfo: UILabel!
    @IBOutlet weak var ageText: UILabel!
    
    //rank
    @IBOutlet weak var rankTitle: UILabel!
    @IBOutlet weak var rankCore: UILabel!
    @IBOutlet weak var rankText: UILabel!
    
    //developer
    @IBOutlet weak var deveText: UILabel!
    @IBOutlet weak var adressText: UILabel!
    @IBOutlet weak var deveImage: UIImageView!
    
    //language
    @IBOutlet weak var languageTitle: UILabel!
    @IBOutlet weak var languageText: UILabel!
    @IBOutlet weak var languageCount: UILabel!
    
    //AppSize
    @IBOutlet weak var sizeTitle: UILabel!
    @IBOutlet weak var sizeInfo: UILabel!
    @IBOutlet weak var SizeUnits: UILabel!
    
    //deImage
    @IBOutlet var deImage: [UIImageView]!
    
    
    let detailInfo: Info
    let ratingData: ratingInfo
    let deImageInfo: detailPhoto
    
    
    init?(coder:NSCoder,detailInfo: Info,ratingData: ratingInfo,deImageInfo: detailPhoto) {
        self.detailInfo = detailInfo
        self.ratingData = ratingData
        self.deImageInfo = deImageInfo
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //line
        for (i,_) in lineText.enumerated(){
            lineText[i].textColor = .systemGray
        }
        
        //top Info
        detailImage.image = UIImage(named: detailInfo.image)
        detailImage.contentMode = .scaleAspectFill
        detailImage.layer.cornerRadius = 20
        detailTitle.text = detailInfo.title
        detailSubTitle.text = detailInfo.subTitle
        detailSubTitle.textColor = .systemGray
        detailSubText.text = detailInfo.subDetailTitle
        detailSubText.textColor = .systemGray
        detailSubText.font = detailSubText.font.withSize(10)
        detailGetBtn.setTitle("取得", for: .normal)
    
        //middle
        ratingCountText.text = "\(ratingData.ratingCount)份評分"
        ratingCountText.textColor = .systemGray
        ratingCoreText.text = "\(ratingData.core)"
        ratingCoreText.textColor = .systemGray
        for i in 0...4{
            starImageView[i].image = UIImage(systemName: "star.fill")
            starImageView[i].tintColor = .systemGray
        }
        //age
        ageTitle.text = "年齡"
        ageTitle.textColor = .systemGray
        ageInfo.text = ratingData.age
        ageInfo.textColor = .systemGray
        ageText.text = "歲"
        ageText.textColor = .systemGray
        
        //rank
        rankTitle.text = "排行榜"
        rankTitle.textColor = .systemGray
        rankCore.text = ratingData.rank
        rankCore.textColor = .systemGray
        rankText.text = ratingData.rankCategory
        rankText.textColor = .systemGray
        
        //develop
        deveText.text = "開發者"
        deveText.textColor = .systemGray
        
        deveImage.tintColor = .systemGray
        
        adressText.text = ratingData.develop
        adressText.textColor = .systemGray
        
        //language
        languageTitle.text = "語言"
        languageTitle.textColor = .systemGray
        
        languageText.text = ratingData.language
        languageText.textColor = .systemGray
        
        languageCount.text = "+\(ratingData.languageCount)個"
        languageCount.textColor = .systemGray
        
        //AppSize
        sizeTitle.text = "大小"
        sizeTitle.textColor = .systemGray
        
        sizeInfo.text = "\(ratingData.AppSize)"
        sizeInfo.textColor = .systemGray
        
        SizeUnits.text = "MB"
        SizeUnits.textColor = .systemGray
        
        //photo
        for (i,_) in deImage.enumerated(){
            deImage[i].image = UIImage(named: deImageInfo.photoName[i] )
            deImage[i].contentMode = .scaleAspectFill
            deImage[i].layer.cornerRadius = 6
            
        }
       
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    // MARK: - Table view data source

   
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
