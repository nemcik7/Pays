import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = ""
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLabel.text = "$\(totalPrice)"
    }
    
}

