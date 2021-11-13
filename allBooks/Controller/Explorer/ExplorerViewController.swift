//
//  ExplorerViewController.swift
//  allBooks
//
//  Created by Gabriel do Prado Moreira on 12/11/21.
//

import UIKit

class ExplorerViewController: UIViewController {
    
    //MARK: - Properties
    private var tableView: UITableView = {
        return UITableView()
    }()
    
    //MARK: - LifeCyle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Selectors
    
    //MARK: - Helper
    func configureTableView() {
        
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 120
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.addConstraintsToFillView(view)
       
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension ExplorerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ExplorerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Sei la"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
