//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Bradley Hoang on 08/05/2022.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13441,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 801,
     "total_market_cap": {
       "btc": 48341467.57369889,
       "eth": 653267151.1477089,
       "ltc": 17847136436.476273,
       "bch": 6269053369.192827,
       "bnb": 4657800372.425022,
       "eos": 847378026987.5144,
       "xrp": 2913439147574.759,
       "xlm": 10049743968935.486,
       "link": 164631688755.0557,
       "dot": 123903487763.49945,
       "yfi": 103637216.38549623,
       "usd": 1675984186222.6265,
       "aed": 6156057514414.342,
       "ars": 194919890478048.97,
       "aud": 2367879061836.7227,
       "bdt": 144868744552489.66,
       "bhd": 632050508276.6465,
       "bmd": 1675984186222.6265,
       "brl": 8517184035964.744,
       "cad": 2158382714543.083,
       "chf": 1656790815322.0054,
       "clp": 1439653656123372.5,
       "cny": 11172948577453.148,
       "czk": 39762726494115.95,
       "dkk": 11821303059893.354,
       "eur": 1590118488409.8806,
       "gbp": 1358227640419.9326,
       "hkd": 13156232844140.588,
       "huf": 606957673040526,
       "idr": 24299508121576668,
       "ils": 5700709370859.511,
       "inr": 128972178680808.5,
       "jpy": 218841610277933.4,
       "krw": 2128502705340417.5,
       "kwd": 514694743588.9693,
       "lkr": 604244105480434.8,
       "mmk": 3119470248345268,
       "mxn": 33754321510523.65,
       "myr": 7324050893792.872,
       "ngn": 695851874277773,
       "nok": 15905927919345.844,
       "nzd": 2615373322600.407,
       "php": 87814024401274.84,
       "pkr": 312738649149142.06,
       "pln": 7492437024982.657,
       "rub": 111452945031836.17,
       "sar": 6286420592371.267,
       "sek": 16677551038682.705,
       "sgd": 112179424214877660,
       "thb": 57550337166811.96,
       "try": 25047583663097.152,
       "twd": 49713042931735.67,
       "uah": 50693051220850.78,
       "vef": 167816296566.47165,
       "vnd": 38497356757533710,
       "zar": 26931104971099.71,
       "xdr": 1219476261610.9363,
       "xag": 74954705563.59712,
       "xau": 889662685.5725559,
       "bits": 48341467573698.89,
       "sats": 4834146757369889
     },
     "total_volume": {
       "btc": 2818732.3098087725,
       "eth": 38091214.81613064,
       "ltc": 1040644867.3567201,
       "bch": 365540894.1964661,
       "bnb": 271590687.27853185,
       "eos": 49409584424.59955,
       "xrp": 169879101113.5688,
       "xlm": 585988375039.6615,
       "link": 9599473983.796343,
       "dot": 7224662009.371606,
       "yfi": 6042960.3192969235,
       "usd": 97724604021.01126,
       "aed": 358952243029.57715,
       "ars": 11365542270251.438,
       "aud": 138068154574.40103,
       "bdt": 8447120690512.607,
       "bhd": 36854098117.61163,
       "bmd": 97724604021.01126,
       "brl": 496626665174.37585,
       "cad": 125852676796.3788,
       "chf": 96605461855.76266,
       "clp": 83944457608008.38,
       "cny": 651481072706.072,
       "czk": 2318516328123.0933,
       "dkk": 689285835771.5992,
       "eur": 92717879383.20267,
       "gbp": 79196605446.25157,
       "hkd": 767123971497.3536,
       "huf": 35390965346209.33,
       "idr": 1416874830089234,
       "ils": 332401445363.1083,
       "inr": 7520211225689.286,
       "jpy": 12760388721764.889,
       "krw": 124110409720425.14,
       "kwd": 30011225894.852596,
       "lkr": 35232740514809.31,
       "mmk": 181892524572050.38,
       "mxn": 1968173524983.1638,
       "myr": 427056519571.81885,
       "ngn": 40574278343483.7,
       "nok": 927455354461.4077,
       "nzd": 152499244574.78796,
       "php": 5120329196809.07,
       "pkr": 18235411110320.695,
       "pln": 436874910537.8097,
       "rub": 6498685971948.033,
       "sar": 366553555904.1417,
       "sek": 972447762152.6792,
       "sgd": 6541046091497997,
       "thb": 3355690320430.816,
       "try": 1460494207094.0132,
       "twd": 2898707204471.243,
       "uah": 2955850298528.075,
       "vef": 9785164600.623861,
       "vnd": 2244734154362627.2,
       "zar": 1570320048830.9453,
       "xdr": 71106180928.56024,
       "xag": 4370517920.710873,
       "xau": 51875151.55247335,
       "bits": 2818732309808.7725,
       "sats": 281873230980877.25
     },
     "market_cap_percentage": {
       "btc": 39.373997016085205,
       "eth": 18.458739249857878,
       "usdt": 4.976697613593036,
       "bnb": 3.607319728388093,
       "usdc": 2.903939484935918,
       "xrp": 1.6588657954599604,
       "sol": 1.5673320924637861,
       "ada": 1.5064884091680242,
       "luna": 1.314110333313007,
       "ust": 1.1172291780974701
     },
     "market_cap_change_percentage_24h_usd": -3.5547222322123337,
     "updated_at": 1651999631
   }
 }
 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
