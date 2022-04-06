//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Nick Deaconu on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    
    @IBOutlet weak var  tableView: UITableView!
    var animalNames = ["turtle", "toad", "lizard"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tablecell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        tablecell.textLabel?.text = animalNames[indexPath.row]
        return tablecell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalNames.count
    }

}

