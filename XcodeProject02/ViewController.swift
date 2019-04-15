import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        let a = add(a: -2, b: -5)
        
        if a > 0{
            print("a 值為：\( a )")
        }
        else{
            print("a 值小於０：\( a )")
        }
    }
    
    @IBAction func showMessage(sender: UIButton){
        
        let dictionary = ["Button-Test1": "Hello","Button-Test2": "World","Button-Test3": "to","Button-Test4": "you"]
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text{
            
            let meaning = dictionary[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning"
                , message: meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController,animated: true,completion: nil)
        }
    }
    
    func add(a: Int, b: Int) -> Int{
        return a + b
    }
}
