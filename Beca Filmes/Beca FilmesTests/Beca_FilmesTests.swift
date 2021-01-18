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
    
    override func setUp() {
        vc.listaDeFilmes.count == 20
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
