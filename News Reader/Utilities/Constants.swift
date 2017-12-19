//
//  Constants.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 23/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import Foundation
import SVProgressHUD

let LATEST = "latest"

let TOP = "top"

let ABC_NEWS_AU = "abc-news-au"

let AL_JAZEERA_ENGLISH = "al-jazeera-english"

let ARS_TECHNICA = "ars-technica"

let ASSOCIATED_PRESS = "associated-press"

let BBC_NEWS = "bbc-news"

let BBC_SPORT = "bbc-sport"

let BILD = "bild"

let BLOOMBERG = "bloomberg"

let BREITBART_NEWS = "breitbart-news"

let BUSINESS_INSIDER = "business-insider"

let BUSINESS_INSIDER_UK = "business-insider-uk"

let BUZZFEED = "buzzfeed"

let CNBC = "cnbc"

let CNN = "cnn"

let DAILY_MAIL = "daily-mail"

let DER_TAGESSPIEGEL = "der-tagesspiegel"

let DIE_ZEIT = "die-zeit"

let ENGADGET = "engadget"

let ENTERTAINMENT_WEEKLY = "entertainment-weekly"

let ESPN = "espn"

let ESPN_CRIC_INFO = "espn-cric-info"

let FINANCIAL_TIMES = "financial-times"

let FOCUS = "focus"

let FOOTBALL_ITALIA = "football-italia"

let FORTUNE = "fortune"

let FOURFOURTWO = "four-four-two"

let FOX_SPORTS = "fox-sports"

let GOOGLE_NEWS = "google-news"

let GRUENDERSZENE = "gruenderszene"

let HACKER_NEWS = "hacker-news"

let HANDELSBLATT = "handelsblatt"

let IGN = "ign"

let INDEPENDENT = "independent"

let MASHABLE = "mashable"

let METRO = "metro"

let MIRROR = "mirror"

let MTV_NEWS = "mtv-news"

let MTV_NEWS_UK = "mtv-news-uk"

let NATIONAL_GEOGRAPHIC = "national-geographic"

let NEW_SCIENTIST = "new-scientist"

let NEWSWEEK = "newsweek"

let NEW_YORK_MAGAZINE = "new-york-magazine"

let NFL_NEWS = "nfl-news"

let POLYGON = "polygon"

let RECODE = "recode"

let REDDIT = "reddit-r-all"

let REUTERS = "reuters"

let SPIEGEL_ONLINE = "spiegel-online"

let T3N = "t3n"

let TALKSPORT = "talksport"

let TECHCRUNCH = "techcrunch"

let TECHRADAR = "techradar"

let THE_ECONOMIST = "the-economist"

let THE_GUARDIAN_AU = "the-guardian-au"

let THE_GUARDIAN_UK = "the-guardian-uk"

let THE_HINDU = "the-hindu"

let THE_HUFFINGTON_POST = "the-huffington-post"

let THE_LAD_BIBLE = "the-lad-bible"

let THE_NEW_YORK_TIMES = "the-new-york-times"

let THE_NEXT_WEB = "the-next-web"

let THE_SPORT_BIBLE = "the-sport-bible"

let THE_TELEGRAPH = "the-telegraph"

let THE_TIMES_OF_INDIA = "the-times-of-india"

let THE_VERGE = "the-verge"

let THE_WALL_STREET_JOURNAL = "the-wall-street-journal"

let THE_WASHINGTON_POST = "the-washington-post"

let TIME = "time"

let USA_TODAY = "usa-today"

let WIRED_DE = "wired-de"

let WIRTSCHAFTS_WOCHE = "wirtschafts-woche"

func generateURL(source: String) -> String {
    return "https://newsapi.org/v1/articles?source=\(source)&sortBy=\(TOP)&apiKey=\(API_KEY)"
}

func stringToSentenceString(string: String) -> String {
    var string = string.split(separator: "=")[1].split(separator: "&")[0]
    string = String.SubSequence(string.replacingOccurrences(of: "-", with: " "))
    return string.uppercased()
}

func initializeProgressHUD() {
    SVProgressHUD.setForegroundColor(UIColor.black)
    SVProgressHUD.setBackgroundColor(UIColor.lightGray)
    SVProgressHUD.show(withStatus: "Preparing News Feed...")
}
