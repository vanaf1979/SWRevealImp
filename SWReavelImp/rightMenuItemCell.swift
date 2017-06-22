




import UIKit

class rightMenuItemCell: baseCell
{
    
    override func setupViews()
    {
        // Self
        self.backgroundColor = UIColor.white
        
        // View Functions
        self.contentView.addSubview(nameLabel)
        setupNameLabel()
    }
    
    
    // --- View Functions
    
    
    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = ""
        lb.textColor = UIColor.black
        lb.font = lb.font.withSize(20)
        lb.textAlignment = .right
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    func setupNameLabel()
    {
        nameLabel.rightAnchor.constraint( equalTo: self.contentView.rightAnchor, constant: -25 ).isActive = true
        nameLabel.topAnchor.constraint( equalTo: self.contentView.topAnchor, constant: +10 ).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, constant: -10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
}
