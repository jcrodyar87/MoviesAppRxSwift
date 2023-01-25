//
//  Constants.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import Foundation

struct Constants {
    static let apiKey = "?api_key=09a9270b9f93c4c42eec58939e656012"
    
    struct URL {
        static let main = "https://api.themoviedb.org/"
        static let urlImages = "https://images.tmdb.org/t/p/w200"
    }
    
    struct Endpoints {
        static let urlListPopularMovies = "3/movie/popular"        
        static let urlDetailMovie = "3/movie/"
    }
}
