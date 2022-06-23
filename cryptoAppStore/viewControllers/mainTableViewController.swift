//
//  mainTableViewController.swift
//  cryptoAppStore
//
//  Created by Ashin Wang on 2022/4/21.
//

import UIKit

class mainTableViewController: UITableViewController {

    //TopInfo
    @IBOutlet var titleText: [UILabel]!
    @IBOutlet var subTitleText: [UILabel]!
    @IBOutlet var detailText: [UILabel]!
    @IBOutlet var infoImage: [UIImageView]!
    
    //hotApp
    @IBOutlet var appImage: [UIImageView]!
    @IBOutlet var hotAppTitle: [UILabel]!
    @IBOutlet var hotAppSubTitle: [UILabel]!
    @IBOutlet var hotAppDetailText: [UILabel]!
    @IBOutlet var hotAppBtn: [UIButton]!
    
    //usingApp
    @IBOutlet var usingAppImage: [UIImageView]!
    @IBOutlet var usingAppTitle: [UILabel]!
    @IBOutlet var usingAppSubTitle: [UILabel]!
    @IBOutlet var usingAppDetailText: [UILabel]!
    
    @IBOutlet weak var hotAppLabel: UILabel!
    @IBOutlet weak var usingAppLabel: UILabel!
    @IBOutlet var usingAppBtn: [UIButton]!
    
    var TopIndex = 0
    var hotIndex = 0
    var usingIndex = 0
    
    
    var indexPage =
    [
        AppIntro(title: "全新原創系列", subTitle: "Disney+ |《卡戴蒙家族》", detailTitle: "《卡戴蒙家族》實境秀 盛大回歸", imageName: "ad3"),
        AppIntro(title: "新APP", subTitle: "Carat - Filter Camera", detailTitle: "套用創作者濾鏡 一鍵改造影像風格", imageName: "ad2"),
        AppIntro(title: "全新原創系列", subTitle: "Amazon Prime Video |《異域》", detailTitle: "純樸西部生活 異常超自然現象", imageName: "ad1")
    ]
    
    var hotAppInfo =
    [
    hotApp(imageName: "crypto01", title: "Crypto.com - 購買Bitocoin、Ether", subTitle: "加密貨幣買賣及最佳平台", detailTitle: "App內購買"),
    hotApp(imageName: "crypto09", title: "MetaMask - Blockchain Wallet", subTitle: "MetaMask", detailTitle: "App內購買"),
    hotApp(imageName: "crypto08", title: "OpenSea:NFT marketplace", subTitle: "圖像與設計", detailTitle: "App內購買"),
    //換頁
    hotApp(imageName: "crypto03", title: "Crypto Browser Mobile", subTitle: "Cryptocompany OU", detailTitle: "App內購買"),
    hotApp(imageName: "crypto10", title: "TradingView - 股票圖表、外匯、和比特幣", subTitle: "獲取即時資訊和市場洞察", detailTitle: "App內購買"),
    hotApp(imageName: "crypto05", title: "Binance Buy Bicoin&Crypto", subTitle: "Crypto Exchange & Wallet", detailTitle: "App內購買"),
    //換頁
    hotApp(imageName: "crypto02", title: "外匯TOP1--外匯,期貨,股票指數投資軟體", subTitle: "全球外匯期貨投資交易軟體", detailTitle:  "App內購買"),
    hotApp(imageName: "crypto04", title: "Bybit:加密貨幣交易所", subTitle: "值得信賴的加密貨幣交易所", detailTitle: "App內購買"),
    hotApp(imageName: "crypto06", title: "CoinMarketCap: Crypto Tracker", subTitle: "Price Charts, Portfolio & News", detailTitle: "App內購買")
    ]
    
    var usingApp =
    [
      everybodyUse(imageName: "crypto05", title: "Binance Buy Bicoin&Crypto", subTitle: "Crypto Exchange & Wallet"),
      everybodyUse(imageName: "crypto10", title: "TradingView - 股票圖表、外匯、和比特幣", subTitle: "獲取即時資訊和市場洞察"),
      everybodyUse(imageName: "crypto06", title: "CoinMarketCap: Crypto Tracker", subTitle: "Price Charts, Portfolio & News"),
      //換頁
      everybodyUse(imageName: "crypto04", title: "Bybit:加密貨幣交易所", subTitle: "值得信賴的加密貨幣交易所"),
      everybodyUse(imageName: "crypto02", title: "外匯TOP1--外匯,期貨,股票指數投資軟體", subTitle: "全球外匯期貨投資交易軟體"),
      everybodyUse(imageName: "crypto03", title: "Crypto Browser Mobile", subTitle: "Cryptocompany OU"),
      //換頁
      everybodyUse(imageName: "crypto08", title: "OpenSea:NFT marketplace", subTitle: "圖像與設計"),
      everybodyUse(imageName: "crypto09", title: "MetaMask - Blockchain Wallet", subTitle: "MetaMask"),
      everybodyUse(imageName: "crypto01", title: "Crypto.com - 購買Bitocoin、Ether", subTitle: "加密貨幣買賣及最佳平台")
      
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //topPage
        for (i,_) in indexPage.enumerated(){
            titleText[i].text = indexPage[i].title
            titleText[i].textColor = .systemBlue
            titleText[i].font = titleText[i].font.withSize(12)
            subTitleText[i].text = indexPage[i].subTitle
            subTitleText[i].font = subTitleText[i].font.withSize(20)
            detailText[i].text = indexPage[i].detailTitle
            detailText[i].textColor = .systemGray
            detailText[i].font = detailText[i].font.withSize(18)
            infoImage[i].image = UIImage(named: indexPage[i].imageName)
            infoImage[i].layer.cornerRadius = 8
            infoImage[i].contentMode = .scaleAspectFill
            
            
        }
       
        //HotApp
        hotAppLabel.text = "熱門App"
        hotAppLabel.font = hotAppLabel.font.withSize(20)
        for i in 0...8{
            hotAppBtn[i].setTitle("取得", for: .normal)
//            hotAppBtn[i].layer.cornerRadius = 5
        }
        
        for (i,_) in hotAppInfo.enumerated(){
            hotAppTitle[i].text = hotAppInfo[i].title
            hotAppSubTitle[i].text = hotAppInfo[i].subTitle
            hotAppSubTitle[i].textColor = .systemGray
            hotAppSubTitle[i].font = hotAppSubTitle[i].font.withSize(12)
            appImage[i].image = UIImage(named: hotAppInfo[i].imageName)
            appImage[i].layer.cornerRadius = 15
            appImage[i].contentMode = .scaleAspectFill
            hotAppDetailText[i].text = hotAppInfo[i].detailTitle
            hotAppDetailText[i].font = hotAppDetailText[i].font.withSize(8)
            hotAppDetailText[i].textColor = .systemGray
        }
        
        //usingApp
        usingAppLabel.text = "大家都在用"
        usingAppLabel.font = usingAppLabel.font.withSize(20)
        
        for i in 0...8{
            usingAppBtn[i].setTitle("取得", for: .normal)
            
        }
        
        for (i,_) in usingApp.enumerated(){
            usingAppTitle[i].text = usingApp[i].title
            usingAppSubTitle[i].text = usingApp[i].subTitle
            usingAppSubTitle[i].textColor = .systemGray
            usingAppSubTitle[i].font = usingAppSubTitle[i].font.withSize(12)
            usingAppImage[i].image = UIImage(named: usingApp[i].imageName)
            usingAppImage[i].contentMode = .scaleAspectFill
            usingAppImage[i].layer.cornerRadius = 15
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
