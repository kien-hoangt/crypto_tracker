//
//  DetailView.swift
//  CryptoTracker
//
//  Created by Bradley Hoang on 16/05/2022.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    var coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("Initializing detail view for \(coin.name)")
    }
    
    var body: some View {
        Text(coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
