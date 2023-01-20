//
//  Constants.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import Foundation

struct Constants {
    static let apiKey = ""
    
    struct URL {
        static let main = "https://api.themoviedb.org/"
    }
    
    struct Endpoints {
        static let urlListMovies = "3/movie/popular"
        static let urlImages = "https://images.tmdb.org/t/p/w200"
        static let urlDetailMovie = "3/movie/"
    }
}
