//
//  TotoListRouter.swift
//  TodoList
//
//  Created by 賴弋威 on 2020/1/17.
//  Copyright © 2020 Erstelai. All rights reserved.
//

import Foundation
import UIKit

class TodoListRouter: HomePresenterToRouterProtocol {
    static func createTodoListModule(todoListRef: HomeVC) {
        let presenter: HomeViewToPresenterProtocol & HomeInteractorToPresenterProtocol = HomePresenter()
        todoListRef.presenter = presenter
        todoListRef.presenter?.view = todoListRef
        todoListRef.presenter?.interactor = HomeInteractor()
        todoListRef.presenter?.interactor?.presenter = presenter
    }
}
