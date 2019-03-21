//
//  SelectedRepositoryViewController.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit
import WebKit

class SelectedRepositoryViewController: UIViewController {
    
    // MARK: Properties
    
    var presenter: SelectedRepositoryModuleInterface?
    
    // MARK: IBOutlets
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var unDoBarbutton: UIBarButtonItem!
    @IBOutlet weak var reDoBarbutton: UIBarButtonItem!
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: IBActions
    @IBAction func UndoButtonTouch(_ sender: UIBarButtonItem) {
        webView.goBack()
    }
    
    @IBAction func RedoButtonTouch(_ sender: UIBarButtonItem) {
        webView.goForward()
    }
    
    @IBAction func refreshButtonTouch(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
        webView.navigationDelegate = self
        presenter?.viewIsReady()
        
    }
}

// MARK: SelectedRepositoryViewInterface
extension SelectedRepositoryViewController: SelectedRepositoryViewInterface {
    func showLoading() {
        activityIndicator.startAnimating()
    }
    
    func setModel(repository: Repository) {
        // TODO: set url at WEBKIT
        title = repository.name
        let myURL = URL(string: repository.url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

extension SelectedRepositoryViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
