//
//  Stage.swift
//  Festival Buddy
//
//  Created by Kevin Thrailkill on 3/11/17.
//  Copyright © 2017 kevinthrailkill. All rights reserved.
//

import Foundation


class Stage {
    
    var name: String
    var artists: [Artist]
    
    init(stageName: String, artistsPlaying: [Artist]){
        name = stageName
        artists = artistsPlaying
    }
    
}

func generateQueensDomain() -> Stage {

    let userCalendar = Calendar.current
    var artists : [Artist] = []
    
    //friday
    var fridayDateComponent = DateComponents()
    fridayDateComponent.year = 2017
    fridayDateComponent.month = 4
    fridayDateComponent.day = 24
    fridayDateComponent.hour = 7
    fridayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let friday = userCalendar.date(from: fridayDateComponent)
    
    var artist: Artist = Artist(artistName: "Audien", sTime: friday!, eTime: friday!, stage: "Queen's Domain")
    artists.append(artist)
    
    artist = Artist(artistName: "Cheat Codes", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "GTA", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Hardwell", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Martin Solveig", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Sander Van Doorn", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Wiwek", sTime: friday!, eTime: friday!, stage: "Queen's Domain")

    artists.append(artist)
    
    
    //saturday
    var saturdayDateComponent = DateComponents()
    saturdayDateComponent.year = 2017
    saturdayDateComponent.month = 4
    saturdayDateComponent.day = 25
    saturdayDateComponent.hour = 8
    saturdayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let saturday = userCalendar.date(from: saturdayDateComponent)
    
    artist = Artist(artistName: "Borgeous", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Diplo", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Nghtmre", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Ookay", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Party Favor", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "SikDope", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Tommy Trash", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    artist = Artist(artistName: "Yellow Claw", sTime: saturday!, eTime: saturday!, stage: "Queen's Domain")

    artists.append(artist)
    
    return Stage(stageName: "Queen's Domain", artistsPlaying: artists)
    
}

func generateUpsideDownHouse() -> Stage {
    
    let userCalendar = Calendar.current
    var artists : [Artist] = []
    
    //friday
    var fridayDateComponent = DateComponents()
    fridayDateComponent.year = 2017
    fridayDateComponent.month = 4
    fridayDateComponent.day = 24
    fridayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let friday = userCalendar.date(from: fridayDateComponent)
    
    var artist: Artist = Artist(artistName: "Aazar", sTime: friday!, eTime: friday!, stage: "Upside Down House")

    artists.append(artist)
    
    artist = Artist(artistName: "Des McMahon", sTime: friday!, eTime: friday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Gladiator", sTime: friday!, eTime: friday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Jstjr", sTime: friday!, eTime: friday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Rell The Soundbender", sTime: friday!, eTime: friday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Two Fresh", sTime: friday!, eTime: friday!, stage: "Upside Down House")
    artists.append(artist)
    
    //saturday
    var saturdayDateComponent = DateComponents()
    saturdayDateComponent.year = 2017
    saturdayDateComponent.month = 4
    saturdayDateComponent.day = 25
    saturdayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let saturday = userCalendar.date(from: saturdayDateComponent)
    
    artist = Artist(artistName: "Bot", sTime: saturday!, eTime: saturday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Craig Williams", sTime: saturday!, eTime: saturday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Dombresky", sTime: saturday!, eTime: saturday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Redlight", sTime: saturday!, eTime: saturday!, stage: "Upside Down House")
    artists.append(artist)
    
    artist = Artist(artistName: "Sinden", sTime: saturday!, eTime: saturday!, stage: "Upside Down House")
    artists.append(artist)
    
    return Stage(stageName: "Upside Down House", artistsPlaying: artists)
    
}

func generateAquarium() -> Stage {
    
    let userCalendar = Calendar.current
    var artists : [Artist] = []
    
    //friday
    var fridayDateComponent = DateComponents()
    fridayDateComponent.year = 2017
    fridayDateComponent.month = 4
    fridayDateComponent.day = 24
    fridayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let friday = userCalendar.date(from: fridayDateComponent)
    
    var artist: Artist = Artist(artistName: "Angelz", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Cut Snake", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Jax Jones", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Rezz", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Sage Armstrong", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Shiba San", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Wongo", sTime: friday!, eTime: friday!, stage: "The Aquarium")
    artists.append(artist)
    
    //saturday
    var saturdayDateComponent = DateComponents()
    saturdayDateComponent.year = 2017
    saturdayDateComponent.month = 4
    saturdayDateComponent.day = 25
    saturdayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let saturday = userCalendar.date(from: saturdayDateComponent)
    
    artist = Artist(artistName: "Audien", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "AC Slater", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Chris Lake", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Go Freek", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Kry Wolf", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "MK", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    artist = Artist(artistName: "Will Clarke", sTime: saturday!, eTime: saturday!, stage: "The Aquarium")
    artists.append(artist)
    
    
    return Stage(stageName: "The Aquarium", artistsPlaying: artists)
    
}

func generateCheshireCove() -> Stage {
    
    let userCalendar = Calendar.current
    var artists : [Artist] = []
    
    //friday
    var fridayDateComponent = DateComponents()
    fridayDateComponent.year = 2017
    fridayDateComponent.month = 4
    fridayDateComponent.day = 24
    fridayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let friday = userCalendar.date(from: fridayDateComponent)
    
    var artist: Artist = Artist(artistName: "Astrix", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Chris Schweizer", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Leiel", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Liquid Soul", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Reorder", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Ruben De Ronde", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Simon Patterson", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Vini Vici", sTime: friday!, eTime: friday!, stage: "Cheshire Cove")
    artists.append(artist)

    
    //saturday
    var saturdayDateComponent = DateComponents()
    saturdayDateComponent.year = 2017
    saturdayDateComponent.month = 4
    saturdayDateComponent.day = 25
    saturdayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let saturday = userCalendar.date(from: saturdayDateComponent)
    
    artist = Artist(artistName: "Aly & Fila", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Darren Porter", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Daun Giventi", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Markus Schulz", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Paul Van Dyk", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Sean Tyas", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)
    
    artist = Artist(artistName: "Waio", sTime: saturday!, eTime: saturday!, stage: "Cheshire Cove")
    artists.append(artist)

    return Stage(stageName: "Cheshire Cove", artistsPlaying: artists)
    
}

func generateOuterRealm() -> Stage {
    
    let userCalendar = Calendar.current
    var artists : [Artist] = []
    
    //friday
    var fridayDateComponent = DateComponents()
    fridayDateComponent.year = 2017
    fridayDateComponent.month = 4
    fridayDateComponent.day = 24
    fridayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let friday = userCalendar.date(from: fridayDateComponent)
    
    var artist: Artist = Artist(artistName: "Alison Wonderland", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Bleep Bloop", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Camo & Krooked", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "DC Breaks b2b Loadstar", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Dieselboy", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Ekali", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Eptic b2b Must Die!", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Gentlemen's Club", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Illenium", sTime: friday!, eTime: friday!, stage: "Outer Realm")
    artists.append(artist)
    
    //saturday
    var saturdayDateComponent = DateComponents()
    saturdayDateComponent.year = 2017
    saturdayDateComponent.month = 4
    saturdayDateComponent.day = 25
    saturdayDateComponent.timeZone = TimeZone(abbreviation: "PST")
    let saturday = userCalendar.date(from: saturdayDateComponent)
    
    artist = Artist(artistName: "12th Planet", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Bro Safari", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Drumsound & Bassline Smith", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Herobust", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "MC Dino", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Netsky", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Philo b2b Aweminus b2b Definitive", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Snails", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Soothslayer", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Tantrum Desire", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    
    artist = Artist(artistName: "Trollphace b2b Pogman", sTime: saturday!, eTime: saturday!, stage: "Outer Realm")
    artists.append(artist)
    

    return Stage(stageName: "Outer Realm", artistsPlaying: artists)
    
}
