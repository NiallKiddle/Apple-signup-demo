import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsLabel.text = user?.debugDescription ??  ""
    }
}
