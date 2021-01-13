//
//  Bindable.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 13/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation

public class Bindable<T> {
    
    typealias Listener = (T) -> Void
    
    // MARK: - variables
    var listeners: [Listener] = []
    
    // MARK: - Constructors
    init(_ v: T) {
        self.value = v
    }
    
    // MARK: - Bind
    func bind(_ listerner: @escaping Listener) {
        self.listeners.append(listerner)
    }
    
    var value: T {
        didSet {
            listeners.forEach { $0(value) }
        }
    }
}
