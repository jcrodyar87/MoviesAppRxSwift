//
//  ManagerConnections.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import Foundation
import RxSwift

class ManagerConnections {
    
    func getPopularMovies() -> Observable<[Movie]> {
        return Observable.create{ (observer) -> Disposable in
           
        let session = URLSession.shared
            var request = URLRequest(url: URL(string: Constants.URL.main + Constants.Endpoints.urlListPopularMovies + Constants.apiKey)!)
        request.httpMethod = "GET"
        request.addValue("application", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request){ (data, response, error) in
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let decoder = JSONDecoder()
                    let movies = try decoder.decode(Movies.self, from: data)
                    
                    observer.onNext(movies.listOfMovies)
                } catch let error{
                    observer.onError(error)
                    print("Ha ocurrido un error: \(error.localizedDescription)")
                }
            } else if response.statusCode == 401 {
                print("Error 401")
            }
            observer.onCompleted()
        }.resume()
            
            return Disposables.create {
                session.finishTasksAndInvalidate()
            }
        }
    }
    
    func getDetailMovies() {
        
    }
}
