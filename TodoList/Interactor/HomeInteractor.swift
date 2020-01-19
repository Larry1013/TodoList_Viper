//
//  HomeInteractor.swift
//  TodoList
//
//  Created by 賴弋威 on 2020/1/17.
//  Copyright © 2020 Erstelai. All rights reserved.
//

import Foundation
class HomeInteractor: HomePresenterToInteractorProtocol {
    weak var presenter: HomeInteractorToPresenterProtocol?
    func getTodoList() {
        presenter?.fetchTodoList(list: [TodoItem(name: "每天大便", reward: "PS$", isSuccess: false)])
    }
}
