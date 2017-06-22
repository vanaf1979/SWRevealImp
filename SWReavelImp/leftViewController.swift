




import UIKit


class leftViewController: UITableViewController, SWRevealViewControllerDelegate
{
    
    let leftMenuCellId = "leftMenuItemCell"
    
    var menuItems = ["Left item one", "Left item two", "Left item three", "Left item four", "Left item five"]
    
    
    override func viewDidLoad()
    {
        view.backgroundColor = UIColor.white;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
        tableView.register(leftMenuItemCell.self, forCellReuseIdentifier: leftMenuCellId)
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
        let cell: leftMenuItemCell = tableView.dequeueReusableCell(withIdentifier: leftMenuCellId, for: indexPath) as! leftMenuItemCell
        
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









