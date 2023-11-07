//
//  model.swift
//  networking
//
//  Created by abdallah mansour on 07/11/2023.
//

import Foundation
struct LogInModel: Codable {
    var key, msg: String?
    var data: LogInData?
}

// MARK: - LogInData
struct LogInData: Codable {
    var user: User?
}

// MARK: - User
struct User: Codable {
    var id: Int?
    var name, firstName, secondName, lastName: String?
    var genderType, email, countryCode, phone: String?
    var cityID: Int?
    var cityName: String?
    var districtID: Int?
    var districtName, fullPhone: String?
    var image: String?
    var lang: String?
    var isNotify, isCompleted: Bool?
    var referenceCode: String?
    var isInviteCodeUsed, usePackage: Bool?
    var walletBalance: String?
    var points: Int?
    var preferences: Preferences?
    var token: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case firstName = "first_name"
        case secondName = "second_name"
        case lastName = "last_name"
        case genderType = "gender_type"
        case email
        case countryCode = "country_code"
        case phone
        case cityID = "city_id"
        case cityName = "city_name"
        case districtID = "district_id"
        case districtName = "district_name"
        case fullPhone = "full_phone"
        case image, lang
        case isNotify = "is_notify"
        case isCompleted = "is_completed"
        case referenceCode = "reference_code"
        case isInviteCodeUsed = "is_invite_code_used"
        case usePackage = "use_package"
        case walletBalance = "wallet_balance"
        case points, preferences, token
    }
}

// MARK: - Preferences
struct Preferences: Codable {
    var id: Int?
    var softener, bleach, freshener: Bool?
    var ironingMethod: Int?
    var ironingMethodText: String?
    var foldingClothes: Int?
    var foldingClothesText: String?
    
    enum CodingKeys: String, CodingKey {
        case id, softener, bleach, freshener
        case ironingMethod = "ironing_method"
        case ironingMethodText = "ironing_method_text"
        case foldingClothes = "folding_clothes"
        case foldingClothesText = "folding_clothes_text"
    }
}
