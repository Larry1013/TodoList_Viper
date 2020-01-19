//
//  Protocols.swift
//  TodoList
//
//  Created by 賴弋威 on 2020/1/17.
//  Copyright © 2020 Erstelai. All rights reserved.
//

import Foundation
import UIKit

// 提供給不同層級時需要呼叫時的操作介面
protocol HomeViewToPresenterProtocol: AnyObject {
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var view: HomePresenterToViewProtocol? { get set }
    func lodadTodoList()
    func showTodoList(list: [TodoItem], from: UIViewController)
}

protocol HomePresenterToViewProtocol: AnyObject {
    func showTodoList(list: [TodoItem])
}

protocol HomePresenterToInteractorProtocol: AnyObject {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
    func getTodoList()
}

protocol HomeInteractorToPresenterProtocol: AnyObject {
    func fetchTodoList(list: [TodoItem])
}

protocol HomePresenterToRouterProtocol: AnyObject {
    static func createTodoListModule(todoListRef: HomeVC)
}
