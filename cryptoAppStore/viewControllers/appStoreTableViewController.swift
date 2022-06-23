//
//  appStoreTableViewController.swift
//  cryptoAppStore
//
//  Created by Ashin Wang on 2022/4/20.
//

import UIKit

class appStoreTableViewController: UITableViewController {
    
    
    
    var AppStore = [
        
        Info(image: "crypto01", title: "Crypto.com - 購買Bitocoin、Ether", subTitle: "加密貨幣買賣及最佳平台", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto02", title: "外匯TOP1--外匯,期貨,股票指數投資軟體", subTitle: "全球外匯期貨投資交易軟體", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto03", title: "Crypto Browser Mobile", subTitle: "Cryptocompany OU", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto04", title: "Bybit:加密貨幣交易所", subTitle: "值得信賴的加密貨幣交易所", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto05", title: "Binance Buy Bicoin&Crypto", subTitle: "Crypto Exchange & Wallet", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto06", title: "CoinMarketCap: Crypto Tracker", subTitle: "Price Charts, Portfolio & News", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto07", title: "CoinGecko - 加密貨幣匯率追蹤器", subTitle: "利用小工具追蹤加密貨幣", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto08", title: "OpenSea:NFT marketplace", subTitle: "圖像與設計", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto09", title: "MetaMask - Blockchain Wallet", subTitle: "MetaMask", rating: "star.fill", subDetailTitle: "App內購買"),
        Info(image: "crypto10", title: "TradingView - 股票圖表、外匯、和比特幣", subTitle: "獲取即時資訊和市場洞察", rating: "star.fill", subDetailTitle: "App內購買")
    ]
    
    var ratingInfomation =
    [
        ratingInfo(ratingCount: 357, core: 3.8, starImage: "star.fill", age: "4+", rank: "#106",rankCategory: "財經", develop: "Crypto.com", language: "TR", languageCount: 8, AppSize: 224.1),
        ratingInfo(ratingCount: 895, core: 4.9, starImage: "star.fill", age: "4+", rank: "#91",rankCategory: "財經", develop: "首創外匯", language: "HI", languageCount: 10, AppSize: 54.6),
        ratingInfo(ratingCount: 57, core: 2.9, starImage: "star.fill", age: "17+", rank: "", rankCategory: "工具程式", develop: "Cryptocompany OU", language: "DA", languageCount: 36, AppSize: 105.8),
        ratingInfo(ratingCount: 1414, core: 4.8, starImage: "star.fill", age: "12+", rank: "#130" ,rankCategory: "財經", develop: "CoinMarketCap", language: "RU", languageCount: 20, AppSize: 109.9)
    ]
    
    
    var deImageView = [
        detailPhoto(photoName: ["de1","de2","de3"]),
        detailPhoto(photoName: ["de4","de5","de6"]),
        detailPhoto(photoName: ["de7","de8","de9"]),
        detailPhoto(photoName: ["de10","de11","de12"])
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        //圖片
        //        for (i,_) in appImage.enumerated() {
        //            appImage[i].image = UIImage(named: AppStore[i].image )
        //            appImage[i].layer.cornerRadius = 20
        //        }
        //        //標題
        //        for (i,_) in appTitle.enumerated() {
        //            appTitle[i].text = AppStore[i].title
        //            appTitle[i].font = UIFont.boldSystemFont(ofSize: 18)
        //        }
        //
        //        //副標
        //        for (i,_) in appSubTitle.enumerated() {
        //            appSubTitle[i].text = AppStore[i].subTitle
        //            appSubTitle[i].font = UIFont.systemFont(ofSize: 15)
        //            appSubTitle[i].textColor = UIColor.systemGray
        //        }
        //
        //        //評分
        //        for (i,_) in starImage.enumerated() {
        //            starImage[i].tintColor = UIColor.systemGray
        //        }
        //
        //        //評分數
        //        for (i,_) in ratingCount.enumerated() {
        //            ratingCount[i].text = "\(AppStore[i].ratingConunt)"
        //            ratingCount[i].font = UIFont.systemFont(ofSize: 15)
        //            ratingCount[i].alpha = 0.5
        //        }
        //
        //        //按鈕
        //        for (i,_) in getAppBtn.enumerated() {
        //            getAppBtn[i].setTitle("取得", for: .normal)
        //            getAppBtn[i].layer.cornerRadius = 15
        //
        //        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    //傳資料
    @IBSegueAction func showDetail(_ coder: NSCoder) -> appDetailTableViewController? {
        //guard let 寫法
        guard let row = tableView.indexPathForSelectedRow?.row else {
            return nil
            }
        return appDetailTableViewController(coder: coder, detailInfo: AppStore[row],ratingData: ratingInfomation[row], deImageInfo: deImageView[row])
        
        
        //if let寫法
//        if let row = tableView.indexPathForSelectedRow?.row
//        {
//            return appDetailTableViewController(coder: coder, detailInfo: AppStore[row],ratingData: ratingInfomation[row], deImageInfo: deImageView[row])
//        }else{
//            return nil
//        }
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionName: String
        
        switch section{
        case 0:
            sectionName = NSLocalizedString("熱門", comment: "熱門")
        case 1:
            sectionName = NSLocalizedString("專業推薦", comment: "專業推薦")
        default:
            sectionName = ""
        }
        return sectionName
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        tableView.rowHeight = 120
        tableView.separatorColor = .systemGray
        
        return AppStore.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //gurd let 寫法 or as!（驚嘆號主要是這邊一定會有東西)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: appInfoTableViewCell.reusedIdentifier, for: indexPath) as? appInfoTableViewCell else{
            fatalError("dequeueReusableCell appInfoTableViewCell failed")
        }
        
        cell.separatorInset = UIEdgeInsets(top: 0, left: 125
                                           , bottom: 0, right: 20)
        
        //圖
        cell.appImageView.image = UIImage(named: AppStore[indexPath.row].image)
        cell.appImageView.layer.cornerRadius = 16
        //標
        cell.appTitle.text = AppStore[indexPath.row].title
        //副標
        cell.appSubTitle.text = AppStore[indexPath.row].subTitle
        cell.appSubTitle.textColor = .systemGray
        //按鈕
        cell.appBtn.layer.cornerRadius = 12
        cell.appBtn.setTitle("取得", for: .normal)
        //按鈕副標
        cell.detailText.text = AppStore[indexPath.row].subDetailTitle
        cell.detailText.textColor = .systemGray
        
        return cell
    }
    
    
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
