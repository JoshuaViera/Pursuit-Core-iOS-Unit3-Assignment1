//
//  PeopleVC.swift
//  PeopleAndAppleStockPrices
//
//  Created by Joshua Viera on 12/12/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class PeopleVC: UIViewController {
    
    private var users = [User](){
        didSet{
            tableView.reloadData()
        }
    }
    
    var searchBox = [String]()
    var searching: Bool = false
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        users = PeopleParserService.fetchUsers()
        tableView.dataSource = self
        searchBar.delegate = self
        print("there are \(users.count) users")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailPeopleVC , let indexPath = tableView.indexPathForSelectedRow else {fatalError("error during segue")}
        destination.personIExpect = users[indexPath.row]
    }
    
}


extension PeopleVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = users[indexPath.row]
        cell.textLabel?.text = person.name.title + "." /*+  person.name.first + " " */+ person.name.last
        cell.detailTextLabel?.text = person.location.state
        return cell
    }
}

extension PeopleVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        users = PeopleParserService.fetchUsers()
        if searchText == "" {
            return
        } else {
            users = PeopleParserService.fetchUsers().filter{$0.name.last.lowercased().contains(searchText.lowercased())}
        }
        searching = true
    }
}
