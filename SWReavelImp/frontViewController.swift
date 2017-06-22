




import UIKit


class frontViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        // Self
        view.backgroundColor = UIColor.white;
        
        // View functions
        self.view.addSubview(nameLabel)
        setupNameLabel()
        
        // Logic functions
        self.setNavigationBar()
        self.frontGestures()
    }
    
    
    // -- View functions
    
    
    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "---"
        lb.textColor = UIColor.black
        lb.textAlignment = .center
        lb.font = lb.font.withSize(20)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    func setupNameLabel()
    {
        nameLabel.centerXAnchor.constraint( equalTo: self.view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint( equalTo: self.view.centerYAnchor ).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
    // -- Logic functions
    
    
    func setNavigationBar()
    {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "< Menu",
            style: .plain,
            target: self,
            action: #selector( leftNavTap )
        )
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Menu >",
            style: .plain,
            target: self,
            action: #selector( rightNavTap )
        )
        
    }
    
    func leftNavTap()
    {
        self.revealViewController().revealToggle( self.revealViewController() )
    }
    
    
    func rightNavTap()
    {
        self.revealViewController().rightRevealToggle( self.revealViewController() )
    }
    
    
    func frontGestures()
    {
        view.addGestureRecognizer( self.revealViewController().panGestureRecognizer() )
        view.addGestureRecognizer( self.revealViewController().tapGestureRecognizer() )
    }
    
}
