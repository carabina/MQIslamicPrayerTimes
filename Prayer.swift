//
//  Prayer.swift
//  PrayerTimes
//
//  Created by Mustafa Alqudah on 6/9/17.
//  Copyright © 2017 Mustafa Alqudah. All rights reserved.
//

import Foundation

public enum Prayer : Int {
    case Alimsak = 0
    case AlFajr = 1
    case Sunrise = 2
    case AlDhuhr = 3
    case AlAsr = 4
    case Sunset = 5
    case AlMaghrib = 6
    case AlIsha = 7
    
    public func name() -> String {
        switch self {
        case .Alimsak: return ""//Alimsak_Prayer_Name".localized()
        case .AlFajr: return ""//"AlFajr_Prayer_Name".localized()
        case .Sunrise: return ""//"Sunrise_Prayer_Name".localized()
        case .AlDhuhr: return ""//"AlDhuhr_Prayer_Name".localized()
        case .AlAsr: return ""//"AlAsr_Prayer_Name".localized()
        case .Sunset: return ""//"Sunset_Prayer_Name".localized()
        case .AlMaghrib: return ""//"AlMaghrib_Prayer_Name".localized()
        case .AlIsha: return ""//"AlIsha_Prayer_Name".localized()
        }
    }
    
    public func haveAthan() -> Bool {
        switch self {
        case .Alimsak: return true
        case .AlFajr: return true
        case .Sunrise: return false
        case .AlDhuhr: return true
        case .AlAsr: return true
        case .Sunset: return false
        case .AlMaghrib: return true
        case .AlIsha: return true
        }
    }
    
    public func haveIqamah() -> Bool {
        switch self {
        case .Alimsak: return false
        case .AlFajr: return true
        case .Sunrise: return false
        case .AlDhuhr: return true
        case .AlAsr: return true
        case .Sunset: return false
        case .AlMaghrib: return true
        case .AlIsha: return true
        }
    }
}
