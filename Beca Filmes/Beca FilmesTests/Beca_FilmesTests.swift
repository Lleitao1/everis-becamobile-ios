//
//  Beca_FilmesTests.swift
//  Beca FilmesTests
//
//  Created by Lucas Abdel Leitao on 07/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import XCTest
@testable import Beca_Filmes
import Alamofire
import AlamofireImage

class Beca_FilmesTests: XCTestCase {

    var vc: ViewController = ViewController()
    var dvc: DetalhesViewController = DetalhesViewController()
    
    override func setUp() {
        vc.viewDidLoad()
        XCTAssertEqual(vc.listaDeFilmes.count, 20)
        XCTAssertEqual(vc.listaDeFilmes[0].title, "Mulher Maravilha 1984")
        
    }

}
