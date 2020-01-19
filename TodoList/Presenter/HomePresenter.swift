//
//  HomePresenter.swift
//  TodoList
//
//  Created by 賴弋威 on 2020/1/17.
//  Copyright © 2020 Erstelai. All rights reserved.
//

import Foundation
import UIKit
class HomePresenter: HomeViewToPresenterProtocol {
    var interactor: HomePresenterToInteractorProtocol?
    var view: HomePresenterToViewProtocol?
    func lodadTodoList() {
        interactor?.getTodoList()
    }

    func showTodoList(list: [TodoItem], from: UIViewController) {

    }

    func didGetTodoList(_ list: [TodoItem]) {
        print("didGet \(list)")
    }
}
// call view to reload UI
extension HomePresenter: HomeInteractorToPresenterProtocol {
    func fetchTodoList(list: [TodoItem]) {
        view?.showTodoList(list: list)
    }
}
