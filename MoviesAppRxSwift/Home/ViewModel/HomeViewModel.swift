//
//  HomeViewModel.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import Foundation
import RxSwift

class HomeViewModel {
    
    private weak var view: HomeView?
    private var router: HomeRouter?
    private var managerConnections = ManagerConnections()
    
    func bind(view: HomeView, router: HomeRouter) {
        self.view = view
        self.router = router
        self.router?.setSourceView(view)
    }
    
    func getListMoviesData() -> Observable<[Movie]> {
        return managerConnections.getPopularMovies()
    }
}
