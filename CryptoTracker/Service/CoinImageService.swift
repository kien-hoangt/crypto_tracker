//
//  CoinImageService.swift
//  CryptoTracker
//
//  Created by Bradley Hoang on 06/05/2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image: UIImage? = nil
    
    var imageSubscription: AnyCancellable?
    
    init(coin: CoinModel) {
        getCoinImage(coin: coin)
    }
    
    private func getCoinImage(coin: CoinModel) {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion,
                  receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
