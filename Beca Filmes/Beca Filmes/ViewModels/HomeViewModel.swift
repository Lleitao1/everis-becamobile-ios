//
//  HomeViewModel.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 13/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation

//protocol HomeViewModelDelegate {
//    func reloadData(movie: HomeViewData)
//}
class HomeViewModel{
    
    var listaDeFilmes: [Result] = []
    private let client = FilmesAPI()
    var modelViewData: Bindable<HomeViewData?> = Bindable(nil)
//    var delegate: HomeViewModelDelegate
    
//
//    init(client: FilmesAPIProtocol = FilmesAPI()) {
//        self.client = client
//    }
//
    func recuperarFilmes(){
        client.recebeTendenciasFilmes { (response) in
            self.listaDeFilmes = response
        }
        
    }
    
}
