//
//  FilmesAPI.swift
//  Beca Filmes
//
//  Created by Lucas Abdel Leitao on 07/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import UIKit
import Alamofire

protocol FilmesAPIProtocol {
    func recebeTendenciasFilmes(completion: @escaping ([Result]) -> Void)
}

class FilmesAPI: NSObject {
    
    // MARK: - Get
    func recebeTendenciasFilmes(completion: @escaping ([Result]) -> Void) {
        Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=2536c8a939fafc0cfd57dcda9d9ce039&language=pt-BR", method: .get).responseJSON { (resposta) in
            switch resposta.result{
            case .success:
                
                guard let jsonData = resposta.data else {return}
                guard let welcome = try? JSONDecoder().decode(Filme.self, from: jsonData) else {return}
                
                let filmes = welcome.results
                
                completion(filmes)
                
                break
            case .failure:
                print(resposta.error!)
                break
                }
            }
    }
    
}
