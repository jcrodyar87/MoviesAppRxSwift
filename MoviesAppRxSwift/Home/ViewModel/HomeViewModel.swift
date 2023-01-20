//
//  HomeViewModel.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import Foundation

class HomeViewModel {
    
    private weak var view: HomeView?
    private var router: HomeRouter?
    
    
    func bind(view: HomeView, router: HomeRouter) {
        self.view = view
        self.router = router
        self.router?.setSourceView(view)
    }
}
