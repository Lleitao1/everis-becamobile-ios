//
//  HomeViewModel.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 13/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import Foundation

class HomeViewModel{
    
    var listaDeFilmes:[Result] = []
    var client = FilmesAPI()
    var modelViewData: Bindable<HomeViewData?> = Bindable(nil)
    
    
    func recuperarFilmes(){
        client.recebeTendenciasFilmes { (response) in
            self.listaDeFilmes = response
        }
        
    }
    
}
