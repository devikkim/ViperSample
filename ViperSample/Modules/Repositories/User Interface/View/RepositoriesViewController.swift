//
//  RepositoriesViewController.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class RepositoriesViewController: UIViewController {
    
    // MARK: Properties
    
    var presenter: RepositoriesModuleInterface?
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    private var searchUser: String = "" {
        didSet {
            presenter?.viewIsReady(userName: searchUser)
        }
    }
    
    private var repositories: [Repository] = [Repository]() {
        didSet{
            title = "\(searchUser)'s Repositories"
            tableView.reloadData()
        }
    }
    
    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
        searchUser = "devikkim"
        
        setUI()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setUI(){
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "search github username"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}

// MARK: RepositoriesViewInterface
extension RepositoriesViewController: RepositoriesViewInterface {
    func show(model: [Repository]) {
        repositories = model
    }
    
    func show(error: String) {
        alert(message: error)
    }
    
    func showLoading() {
        activityIndicator.startAnimating()
    }
    
    func hideLoading() {
        activityIndicator.stopAnimating()
    }
    
    func show(panicError: String) {
        self.alert(message: panicError)
    }
}

extension RepositoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryCell") ?? UITableViewCell()
        
        let repository = repositories[indexPath.row]
        
        cell.detailTextLabel?.text = repository.url
        cell.textLabel?.text = repository.name
        
        return cell
    }
}

extension RepositoriesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter?.openSelectedRepository(repository: repositories[indexPath.row])
    }
}

extension RepositoriesViewController: UISearchBarDelegate {
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        if let searchUser = searchBar.text, searchUser != "" {
            self.searchUser = searchUser
        }
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != "" {
            self.searchUser = searchText
        }
    }
}
