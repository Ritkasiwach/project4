//
//  ViewController.swift
//  calculatorRR
//
//  Created by Student on 18/04/24.
//

//import UIKit
//
//class ViewController: UIViewController{
//
//    var firstValue = true
//    var lastOperator: operatorType?
//    var subTotal: Int?
//
//    @IBAction func pressone(_ sender: AnyObject) {
//
//        if firstValue{
//            cacldisplay.text = "1"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text ?? "")! + "1"
//        }
//    }
//
//
//    @IBAction func presstwo(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "2"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text)! + "2"
//        }
//
//
//    }
//
//    @IBAction func pressthree(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "3"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text)! + "3"
//        }
//
//
//
//
//    }
//
//
//    @IBAction func pressfour(_ sender: AnyObject) {
//
//
//        if firstValue{
//            cacldisplay.text = "4"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text)! + "4"
//        }
//    }
//    @IBAction func pressfive(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "5"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text)! + "5"
//        }
//    }
//    @IBAction func presssix(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "6"
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text )! + "6"
//        }
//    }
//    @IBAction func pressseven(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "7"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text )! + "7"
//        }
//    }
//    @IBAction func presseight(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "8"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text )! + "8"
//        }
//    }
//    @IBAction func pressnine(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "9"
//            firstValue = false
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text )! + "9"
//        }
//    }
//
//
//
//
//
//    @IBAction func presszerooo(_ sender: AnyObject) {
//        if firstValue{
//            cacldisplay.text = "0"
//
//        }
//        else {
//            cacldisplay.text = (cacldisplay.text )! + "0"
//        }
//
//
//
//
//
//
//
//    }
//
//
//    @IBAction func presssub(_ sender: AnyObject) {
//    }
//    @IBAction func pressmul(_ sender: AnyObject) {
//    }
//    @IBAction func pressdiv(_ sender: AnyObject) {
//    }
//    @IBAction func pressadd(_ sender: AnyObject) {
//
//        if let currentSubTotal = subTotal {
//            subTotal = cacldisplay.text.toInt()! + currentSubTotal
//        }
//        else {subTotal = cacldisplay.text.toInt()!}
//
//        lastOperator = operatorType.add
//        firstValue = true
//        cacldisplay.text = "\(subTotal!)"
//
//
//    }
//
//    @IBAction func presseual(_ sender: AnyObject) {
//    }
//
//    @IBOutlet weak var cacldisplay: UITextField!
//
//    @IBAction func pressclre(_ sender: AnyObject) {
//        cacldisplay.text = "0"
//        firstValue = true
//
//    }
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        cacldisplay.text = "0"
//        // Do any additional setup after loading the view.
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    enum operatorType {
//        case add
//        case sub
//        case div
//        case mul
//
//    }
//}
//
//import UIKit
// class ViewController: UIViewController {
//
//     var firstValue = true
//     var subTotal: Int?
//
//     enum operatorType {
//         case plus
//         case subtract
//         case multiply
//         case divide
//     }
//
//     var lastOperator: operatorType?
//
//     @IBOutlet weak var calcDisplay: UITextField!
//     @IBAction func pressEquals(sender: AnyObject) {
//         var result: Int?
//         if let finalOperator = lastOperator {
//             switch(finalOperator) {
//             case .plus : result = Int(subTotal!) + Int(calcDisplay!)
//             case .subtract : result = subTotal! - calcDisplay.text.toInt()!
//             case .multiply : result = subTotal! * calcDisplay.text.toInt()!
//             case .divide : result = subTotal! / calcDisplay.text.toInt()!
//             }
//         }
//         calcDisplay.text = "\(result!)"
//         subTotal = nil
//         firstValue = true
//     }
//
//     @IBAction func pressMultiply(sender: AnyObject) {
//         if let currentSubTotal = subTotal {
//             subTotal = calcDisplay.text.toInt()! * currentSubTotal
//         } else {
//             subTotal = calcDisplay.text.toInt()!
//         }
//         lastOperator = operatorType.multiply
//         firstValue = true
//         calcDisplay.text = "\(subTotal!)"
//     }
//
//     @IBAction func pressDivide(sender: AnyObject) {
//         if let currentSubTotal = subTotal {
//             subTotal = calcDisplay.text.toInt()! / currentSubTotal
//         } else {
//             subTotal = calcDisplay.text.toInt()!
//         }
//         lastOperator = operatorType.divide
//         firstValue = true
//         calcDisplay.text = "\(subTotal!)"
//     }
//
//     @IBAction func pressMinus(sender: AnyObject) {
//         if let currentSubTotal = subTotal {
//             subTotal = calcDisplay.text.toInt()! - currentSubTotal
//         } else {
//             subTotal = calcDisplay.text.toInt()!
//         }
//         lastOperator = operatorType.subtract
//         firstValue = true
//         calcDisplay.text = "\(subTotal!)"
//     }
//
//
//     @IBAction func pressPlus(sender: AnyObject) {
//         if let currentSubTotal = subTotal {
//             subTotal = calcDisplay.text.toInt()! + currentSubTotal
//         } else {
//             subTotal = calcDisplay.text.toInt()!
//         }
//         lastOperator = operatorType.plus
//         firstValue = true
//         calcDisplay.text = "\(subTotal!)"
//     }
//
//     @IBAction func pressZero(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "0"
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "0"
//         }
//     }
//     @IBAction func pressNine(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "9"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "9"
//         }
//     }
//     @IBAction func pressEight(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "8"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "8"
//         }
//     }
//     @IBAction func pressSeven(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "7"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text )! + "7"
//         }
//     }
//     @IBAction func pressSix(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "6"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text )! + "6"
//         }
//     }
//     @IBAction func pressFive(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "5"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "5"
//         }
//     }
//     @IBAction func pressFour(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "4"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "4"
//         }
//     }
//     @IBAction func pressThree(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "3"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text)! + "3"
//         }
//     }
//     @IBAction func pressTwo(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "2"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text )! + "2"
//         }
//     }
//     @IBAction func pressOne(sender: AnyObject) {
//         if firstValue {
//             calcDisplay.text = "1"
//             firstValue = false
//         } else {
//             calcDisplay.text = (calcDisplay.text )! + "1"
//         }
//     }
//
//     @IBAction func clearCalculations(sender: AnyObject) {
//         calcDisplay.text = "0"
//         firstValue = true
//     }
//
//     override func viewDidLoad() {
//         super.viewDidLoad()
//         calcDisplay.text = "0"
//         // Do any additional setup after loading the view, typically from a nib.
//     }
//     override func didReceiveMemoryWarning() {
//         super.didReceiveMemoryWarning()
//         // Dispose of any resources that can be recreated.
//     }
// }
import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var calculatorWorkings: UILabel!

    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll()
    {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }

    @IBAction func equalsTap(_ sender: Any)
    {
        if(validInput())
        {
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
        }
        else
        {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do math based on input",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func validInput() ->Bool
    {
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in workings
        {
            if(specialCharacter(char: char))
            {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        
        var previous: Int = -1
        
        for index in funcCharIndexes
        {
            if(index == 0)
            {
                return false
            }
            
            if(index == workings.count - 1)
            {
                return false
            }
            
            if (previous != -1)
            {
                if(index - previous == 1)
                {
                    return false
                }
            }
            previous = index
        }
        
        return true
    }
    
    func specialCharacter (char: Character) -> Bool
    {
        if(char == "*")
        {
            return true
        }
        if(char == "/")
        {
            return true
        }
        if(char == "+")
        {
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func allClearTap(_ sender: Any)
    {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any)
    {
        if(!workings.isEmpty)
        {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    
    func addToWorkings(value: String)
    {
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    @IBAction func percentTap(_ sender: Any)
    {
        addToWorkings(value: "%")
    }
    
    @IBAction func divideTap(_ sender: Any)
    {
        addToWorkings(value: "/")
    }
    
    @IBAction func timesTap(_ sender: Any)
    {
        addToWorkings(value: "*")
    }
    
    @IBAction func minusTap(_ sender: Any)
    {
        addToWorkings(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any)
    {
        addToWorkings(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any)
    {
        addToWorkings(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any)
    {
        addToWorkings(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any)
    {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any)
    {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any)
    {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any)
    {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any)
    {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any)
    {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any)
    {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any)
    {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any)
    {
        addToWorkings(value: "9")
    }
}
