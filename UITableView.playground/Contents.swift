import UIKit
import PlaygroundSupport

class TableViewController : UITableViewController {
    
    var listitems = ["shawn","bill","larry"]
    var colorArr = ["Red", "Blue", "Black", "Yellow", "Green"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(colorArr[indexPath.row])"
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = chooseColor(colorArr[indexPath.row])
        if cell.backgroundColor == UIColor.white {
            cell.textLabel?.textColor = UIColor.black
        }
        return cell
    }

    func chooseColor(_ colorName: String) -> UIColor {
        switch colorName {
        case "Red":
            return UIColor.red
        case "Blue":
            return UIColor.blue
        case "Black":
            return UIColor.black
        case "Yellow":
            return UIColor.yellow
        case "Green":
            return UIColor.green
        default:
            return UIColor.white
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

}

let tableViewController = TableViewController(style: .plain)

PlaygroundPage.current.liveView = tableViewController
