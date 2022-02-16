import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = teams[indexPath.row]
        cell.imageView!.image = UIImage(named: teams[indexPath.row])!
        return cell
    }
    
    
    var teams: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teams = ["Real Madrid", "Sevilla", "Betis", "Atlético de Madrid", "Barcelona", "Real Sociedad",
                 "Villareal", "Rayo Vallecano", "Athletic", "Valencia", "Osasuna", "Celta de Vigo",
                 "RCD Espanyol","Granada", "Elche", "Getafe", "RCD Mallorca", "Cádiz", "Alavés", "Levante"]
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return teams.count
    }
    
}

