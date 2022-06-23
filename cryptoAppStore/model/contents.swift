//
//  contents.swift
//  cryptoAppStore
//
//  Created by Ashin Wang on 2022/4/20.
//

import Foundation


struct Info{
    var image: String
    var title: String
    var subTitle: String
    var rating: String
    var subDetailTitle: String
    
}


struct AppIntro{
    var title: String
    var subTitle: String
    var detailTitle: String
    var imageName: String
}

struct hotApp{
    var imageName: String
    var title: String
    var subTitle: String
    var detailTitle: String
}

struct everybodyUse{
    var imageName: String
    var title: String
    var subTitle: String
}

struct ratingInfo{
    //rating
    var ratingCount: Int
    var core: Double
    var starImage: String
    //age
    var age: String
    //rank
    var rank: String
    var rankCategory: String
    //develop
    var develop: String
    //language
    var language: String
    var languageCount: Int
    //AppSize
    var AppSize: Double
}

struct detailPhoto{
    var photoName: [String]
}
