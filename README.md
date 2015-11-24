# Calculator-Test
> This calculator is a practice for learning swift, can perform simple calculate and simple to use.
> *The digit buttons are positioned based on a math function which draw circles like a snail.*

#Code structure
> It use MVC to orgnise the structure.
> Modle file stores the data and as the calculator's brain
> Views: 
>   BackgroundView do one thing: pain the background.
>   ButtonContainer is a UIView, it draws the blocks and put them along and according the snail function 
>   ButtonView is change the button shape to be round instead of rect
> Controller is the main ViewController.

#Code sample
> This part of code is the Calculator's main part, numbers are stored in two arrays: numbers and operand, calculation append or remove elements when situation siuts.

    private var operandStack = [String]() //store + - × ÷
    private var operatorStack = [Double]() //store digits

    //store digits on stack
    func appendOperator(number: Double) {
    operatorStack.append(number)
    }

    //clear everything for new calculation
    func clearButtonFunc() {
    operatorStack.removeAll()
    operandStack.removeAll()
    }

    //perform calculator when there are enough numbers in the stack
    //return tuple: result for dispaly after finish calculate; flag indecate perform one calculate, when flag is false, result is useless so set it to 0.0
    func appendOperand(operand: String) -> (result: Double, flag: Bool)

#How to use
> 0.9 + 10.9 = 11.0
> 10 + 10 + 20 = 40

#Have a good day:)
