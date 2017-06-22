




import UIKit

class baseCell: UITableViewCell
{
    func setupViews()
    {
        
    }
    
    func setupSelf( )
    {
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
}
