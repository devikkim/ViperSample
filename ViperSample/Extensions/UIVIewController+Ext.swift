//
//  UIVIewController+Ext.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//  Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func confirmationAlert(title: String, message: String, confirmTitle: String, style: UIAlertAction.Style = .destructive, confirmAction: @escaping () -> Void) {
        let deleteActionSheetController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: confirmTitle, style: style) {
            action -> Void in
            confirmAction()
        }
        
        let cancelAction = UIAlertAction(title: "cancel_text", style: .cancel) { action -> Void in
            
        }
        
        deleteActionSheetController.addAction(deleteAction)
        deleteActionSheetController.addAction(cancelAction)
        
        self.present(deleteActionSheetController, animated: true, completion: nil)
    }
    
    func alert(message: String?, title: String? = "alert_text", okAction: (()->())? = nil) {
        let alertController = getAlert(message: message, title: title)
        alertController.addAction(title: "ok_text", handler: okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func alertWithOkCancel(message: String?, title: String? = "Error", okTitle: String? = "ok_text", style: UIAlertController.Style? = .alert, cancelTitle: String? = "cancel_text", OkStyle: UIAlertAction.Style = .default, cancelStyle: UIAlertAction.Style = .default, okAction: (()->())? = nil, cancelAction: (()->())? = nil) {
        let alertController = getAlert(message: message, title: title, style: style)
        alertController.addAction(title: okTitle,style: OkStyle, handler: okAction)
        alertController.addAction(title: cancelTitle, style: cancelStyle, handler: cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func alertWithOk(message: String?, title: String? = "Error", okTitle: String? = "ok_text", style: UIAlertController.Style? = .alert, OkStyle: UIAlertAction.Style = .default, okAction: (()->())? = nil) {
        let alertController = getAlert(message: message, title: title, style: style)
        alertController.addAction(title: okTitle,style: OkStyle, handler: okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    private func getAlert(message: String?, title: String?, style: UIAlertController.Style? = .alert) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: style ?? .alert)
    }
    
    func present(_ alert: UIAlertController, asActionsheetInSourceView sourceView: Any) {
        if UI_USER_INTERFACE_IDIOM() == .pad {
            alert.modalPresentationStyle = .popover
            if let presenter = alert.popoverPresentationController {
                if sourceView is UIBarButtonItem {
                    presenter.barButtonItem = sourceView as? UIBarButtonItem
                }else if sourceView is UIView {
                    let view = sourceView as! UIView
                    presenter.sourceView = view
                    presenter.sourceRect = view.bounds
                }
            }
        }
        self.present(alert, animated: true, completion: nil)
    }
    
}


extension UIAlertController {
    func addAction(title: String?, style: UIAlertAction.Style = .default, handler: (()->())? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: {_ in
            handler?()
        })
        self.addAction(action)
    }
}
