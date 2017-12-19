//
//  Sources.swift
//  News Reader
//
//  Created by Vibhanshu Vaibhav on 30/09/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import Foundation

class Sources {
    
    private var sources = [Source]()
    
    private var general = [Source]()
    private var technology = [Source]()
    private var entertainment = [Source]()
    private var sport = [Source]()
    private var business = [Source]()
    private var music = [Source]()
    private var gaming = [Source]()
    private var science_and_nature = [Source]()
    private var politics = [Source]()
    
    private var sectionObjects = [Object]()
    
    init() {
        
        populateSourceArray()
        
        for source in sources {
            switch source.category {
            case "general":
                general.append(source)
                break
            case "technology":
                technology.append(source)
                break
            case "entertainment":
                entertainment.append(source)
                break
            case "sport":
                sport.append(source)
                break
            case "business":
                business.append(source)
                break
            case "gaming":
                gaming.append(source)
                break
            case "music":
                music.append(source)
                break
            case "science-and-nature":
                science_and_nature.append(source)
                break
            case "politics":
                politics.append(source)
                break
            default:
                break
            }
        }
        
        sectionObjects.append(Object(sectionName: "General", sectionObjects: getGeneral()))
        sectionObjects.append(Object(sectionName: "Technology", sectionObjects: getTechnology()))
        sectionObjects.append(Object(sectionName: "Entertainment", sectionObjects: getEntertainment()))
        sectionObjects.append(Object(sectionName: "Sport", sectionObjects: getSport()))
        sectionObjects.append(Object(sectionName: "Business", sectionObjects: getBusiness()))
        sectionObjects.append(Object(sectionName: "Gaming", sectionObjects: getGaming()))
        sectionObjects.append(Object(sectionName: "Music", sectionObjects: getMusic()))
        sectionObjects.append(Object(sectionName: "Science and Nature", sectionObjects: getScienceAndNature()))
        sectionObjects.append(Object(sectionName: "Politics", sectionObjects: getPolitics()))
        
        freeResources()
    }
    
    func freeResources() {
        sources = []
        general = []
        technology = []
        entertainment = []
        sport = []
        business = []
        music = []
        gaming = []
        science_and_nature = []
        politics = []
    }
    
    func getSources() -> [Source] {
        return sources
    }
    
    func getGeneral() -> [Source] {
        return general
    }
    
    func getTechnology() -> [Source] {
        return technology
    }
    
    func getEntertainment() -> [Source] {
        return entertainment
    }
    
    func getSport() -> [Source] {
        return sport
    }
    
    func getBusiness() -> [Source] {
        return business
    }
    
    func getMusic() -> [Source] {
        return music
    }
    
    func getGaming() -> [Source] {
        return gaming
    }
    
    func getScienceAndNature() -> [Source] {
        return science_and_nature
    }
    
    func getPolitics() -> [Source] {
        return politics
    }
    
    func getSectionObjects() -> [Object] {
        return sectionObjects
    }
    
    func populateSourceArray() {
        
        sources.append(Source(name: "ABC News (AU)", identifier: ABC_NEWS_AU, category: "general"))
        
        sources.append(Source(name: "Al Jazeera English", identifier: AL_JAZEERA_ENGLISH, category: "general"))
        
        sources.append(Source(name: "Ars Technica", identifier: ARS_TECHNICA, category: "technology"))
        
        sources.append(Source(name: "Associated Press", identifier: ASSOCIATED_PRESS, category: "general"))
        
        sources.append(Source(name: "BBC News", identifier: BBC_NEWS, category: "general"))
        
        sources.append(Source(name: "BBC Sport", identifier: BBC_SPORT, category: "sport"))
        
        sources.append(Source(name: "Bild", identifier: BILD, category: "general"))
        
        sources.append(Source(name: "Bloomberg", identifier: BLOOMBERG, category: "business"))
        
        sources.append(Source(name: "Breitbart News", identifier: BREITBART_NEWS, category: "politics"))
        
        sources.append(Source(name: "Business Insider", identifier: BUSINESS_INSIDER, category: "business"))
        
        sources.append(Source(name: "Business Insider (UK)", identifier: BUSINESS_INSIDER_UK, category: "business"))
        
        sources.append(Source(name: "Buzzfeed", identifier: BUZZFEED, category: "entertainment"))
        
        sources.append(Source(name: "CNBC", identifier: CNBC, category: "business"))
        
        sources.append(Source(name: "CNN", identifier: CNN, category: "general"))
        
        sources.append(Source(name: "Daily Mail", identifier: DAILY_MAIL, category: "entertainment"))
        
        sources.append(Source(name: "Der Tagesspiegel", identifier: DER_TAGESSPIEGEL, category: "general"))
        
        sources.append(Source(name: "Die Zeit", identifier: DIE_ZEIT, category: "business"))
        
        sources.append(Source(name: "Engadget", identifier: ENGADGET, category: "technology"))
        
        sources.append(Source(name: "Entertainment Weekly", identifier: ENTERTAINMENT_WEEKLY, category: "entertainment"))
        
        sources.append(Source(name: "ESPN", identifier: ESPN, category: "sport"))
        
        sources.append(Source(name: "ESPN Cric Info", identifier: ESPN_CRIC_INFO, category: "sport"))
        
        sources.append(Source(name: "Financial Times", identifier: FINANCIAL_TIMES, category: "business"))
        
        sources.append(Source(name: "Focus", identifier: FOCUS, category: "general"))
        
        sources.append(Source(name: "Football Italia", identifier: FOOTBALL_ITALIA, category: "sport"))
        
        sources.append(Source(name: "Fortune", identifier: FORTUNE, category: "business"))
        
        sources.append(Source(name: "FourFourTwo", identifier: FOURFOURTWO, category: "sport"))
        
        sources.append(Source(name: "Fox Sports", identifier: FOX_SPORTS, category: "sport"))
        
        sources.append(Source(name: "Google News", identifier: GOOGLE_NEWS, category: "general"))
        
        sources.append(Source(name: "Gruenderszene", identifier: GRUENDERSZENE, category: "technology"))
        
        sources.append(Source(name: "Hacker News", identifier: HACKER_NEWS, category: "technology"))
        
        sources.append(Source(name: "Handelsblatt", identifier: HANDELSBLATT, category: "business"))
        
        sources.append(Source(name: "IGN", identifier: IGN, category: "gaming"))
        
        sources.append(Source(name: "Independent", identifier: INDEPENDENT, category: "general"))
        
        sources.append(Source(name: "Mashable", identifier: MASHABLE, category: "entertainment"))
        
        sources.append(Source(name: "Metro", identifier: METRO, category: "general"))
        
        sources.append(Source(name: "Mirror", identifier: MIRROR, category: "general"))
        
        sources.append(Source(name: "MTV News", identifier: MTV_NEWS, category: "music"))
        
        sources.append(Source(name: "MTV News (UK)", identifier: MTV_NEWS_UK, category: "music"))
        
        sources.append(Source(name: "National Geographic", identifier: NATIONAL_GEOGRAPHIC, category: "science-and-nature"))
        
        sources.append(Source(name: "New Scientist", identifier: NEW_SCIENTIST, category: "science-and-nature"))
        
        sources.append(Source(name: "Newsweek", identifier: NEWSWEEK, category: "general"))
        
        sources.append(Source(name: "New York Magazine", identifier: NEW_YORK_MAGAZINE, category: "general"))
        
        sources.append(Source(name: "NFL News", identifier: NFL_NEWS, category: "sport"))
        
        sources.append(Source(name: "Polygon", identifier: POLYGON, category: "gaming"))
        
        sources.append(Source(name: "Recode", identifier: RECODE, category: "technology"))
        
        sources.append(Source(name: "Reddit /r/all", identifier: REDDIT, category: "general"))
        
        sources.append(Source(name: "Reuters", identifier: REUTERS, category: "general"))
        
        sources.append(Source(name: "Spiegel Online", identifier: SPIEGEL_ONLINE, category: "general"))
        
        sources.append(Source(name: "T3n", identifier: T3N, category: "technology"))
        
        sources.append(Source(name: "TalkSport", identifier: TALKSPORT, category: "sport"))
        
        sources.append(Source(name: "TechCrunch", identifier: TECHCRUNCH, category: "technology"))
        
        sources.append(Source(name: "TechRadar", identifier: TECHRADAR, category: "technology"))
        
        sources.append(Source(name: "The Economist", identifier: THE_ECONOMIST, category: "business"))
        
        sources.append(Source(name: "The Guardian (AU)", identifier: THE_GUARDIAN_AU, category: "general"))
        
        sources.append(Source(name: "The Guardian (UK)", identifier: THE_GUARDIAN_UK, category: "general"))
        
        sources.append(Source(name: "The Hindu", identifier: THE_HINDU, category: "general"))
        
        sources.append(Source(name: "The Huffington Post", identifier: THE_HUFFINGTON_POST, category: "general"))
        
        sources.append(Source(name: "The Lad Bible", identifier: THE_LAD_BIBLE, category: "entertainment"))
        
        sources.append(Source(name: "The New York Times", identifier: THE_NEW_YORK_TIMES, category: "general"))
        
        sources.append(Source(name: "The Next Web", identifier: THE_NEXT_WEB, category: "technology"))
        
        sources.append(Source(name: "The Sport Bible", identifier: THE_SPORT_BIBLE, category: "sport"))
        
        sources.append(Source(name: "The Telegraph", identifier: THE_TELEGRAPH, category: "general"))
        
        sources.append(Source(name: "The Times of India", identifier: THE_TIMES_OF_INDIA, category: "general"))
        
        sources.append(Source(name: "The Verge", identifier: THE_VERGE, category: "technology"))
        
        sources.append(Source(name: "The Wall Street Journal", identifier: THE_WALL_STREET_JOURNAL, category: "business"))
        
        sources.append(Source(name: "The Washington Post", identifier: THE_WASHINGTON_POST, category: "general"))
        
        sources.append(Source(name: "Time", identifier: TIME, category: "general"))
        
        sources.append(Source(name: "USA Today", identifier: USA_TODAY, category: "general"))
        
        sources.append(Source(name: "Wired.de", identifier: WIRED_DE, category: "technology"))
        
        sources.append(Source(name: "Wirtschafts Woche", identifier: WIRTSCHAFTS_WOCHE, category: "business"))
        
    }
    
}
