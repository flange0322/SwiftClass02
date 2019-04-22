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
        
        let person_Name = ["Susan","Kevin","Wayne","Cynthia"]
        let person_Talk = ["Nice to meet you!","Hi,How are you?","HaHa,It's a good day. Right?","Have a good day."]
        
        var dictionary : Dictionary<String,String> = [:]
        for i in 0...3{
           dictionary.updateValue(person_Talk[Int.random(in: 0...3)], forKey: person_Name[i])
        }
        
        print(dictionary)
        
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
