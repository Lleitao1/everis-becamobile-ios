//
//  HomeViewData.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 13/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation

protocol HomeViewDataType {
    var filmes: [Result] { get }
}

class HomeViewData {
    
    private let model: [Result]
    
    init(model: [Result]) {
        self.model = model
    }
}

extension HomeViewData: HomeViewDataType {
    var filmes: [Result] {
        return model
    }
}
