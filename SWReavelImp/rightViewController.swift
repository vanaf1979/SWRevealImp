




import UIKit


class rightViewController: UITableViewController, SWRevealViewControllerDelegate
{
    
    let rightMenuCellId = "rightMenuItemCell"
    
    var menuItems = ["Right item one", "Right item two", "Right item three", "Right item four", "Right item five"]
    
    
    override func viewDidLoad()
    {
        view.backgroundColor = UIColor.white;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
        tableView.register(rightMenuItemCell.self, forCellReuseIdentifier: rightMenuCellId)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return menuItems.count
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 50
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: rightMenuItemCell = tableView.dequeueReusableCell(withIdentifier: rightMenuCellId, for: indexPath) as! rightMenuItemCell
        
        cell.nameLabel.text = self.menuItems[ indexPath.row ]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let menuItemText = menuItems[ (indexPath as NSIndexPath).row ]
        
        let frontNavView = frontViewNavController()
        
        let frontView = frontViewController()
        frontView.title = menuItemText
        frontView.nameLabel.text = menuItemText
        
        frontNavView.viewControllers = [frontView]
        self.revealViewController().pushFrontViewController( frontNavView , animated: true )
    }
    
    
}









