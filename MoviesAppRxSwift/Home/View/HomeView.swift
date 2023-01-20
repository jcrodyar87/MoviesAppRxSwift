//
//  HomeView.swift
//  MoviesAppRxSwift
//
//  Created by Juan Carlos Rodriguez Yarmas on 19/01/23.
//

import UIKit

class HomeView: UIViewController {
    private var router = HomeRouter()
    private var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.bind(view:self, router: router)
    }
}
