//
//  Protocols.swift
//  HYAlertControllerDemo
//
//  Created by 伯驹 黄 on 2016/12/17.
//  Copyright © 2016年 伯驹 黄. All rights reserved.
//

import UIKit

protocol DataPresenter: class {
    var actions: [HYAlertAction] { set get }
    var cancelAction: HYAlertAction? { set get }

    func refresh(_ actions: [HYAlertAction], cancelAction: HYAlertAction?)
}

extension DataPresenter {
    fileprivate func refresh(for tableView: UITableView, actions: [HYAlertAction], cancelAction: HYAlertAction?) {
        self.actions = actions
        self.cancelAction = cancelAction
        tableView.reloadData()
    }
}

extension DataPresenter where Self: HYAlertView {
    func refresh(_ actions: [HYAlertAction], cancelAction: HYAlertAction?) {
        refresh(for: tableView, actions: actions, cancelAction: cancelAction)
    }
}
