//: Playground - noun: a place where people can play

import UIKit

/*
 Допишите перечисление ArithmeticExpression таким образом, чтобы оно могло реализовать любое выражение с использо- ванием операций сложения, вычитания, умножения, деления и возведения в степень.
 */


enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Subtraction(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
    indirect case Division(ArithmeticExpression, ArithmeticExpression)
    indirect case Involution(ArithmeticExpression)
    
    func evaluate( expression: ArithmeticExpression? = nil ) -> Int{
        var expression = expression
        expression = (expression == nil ? self : expression)
        switch expression! {
        case .Number( let value ):
            return value
        case .Addition( let valueLeft, let valueRight ):
            return self.evaluate( expression: valueLeft ) + self.evaluate( expression: valueRight )
        case .Subtraction( let valueLeft, let valueRight ):
            return self.evaluate( expression: valueLeft ) - self.evaluate( expression: valueRight )
        case .Multiplication(let valueLeft, let valueRight):
            return self.evaluate( expression: valueLeft ) * self.evaluate( expression: valueRight )
        case .Division( let valueLeft, let valueRight ):
            return self.evaluate( expression: valueLeft ) / self.evaluate( expression: valueRight )
        case .Involution(let valueLeft):
            return self.evaluate( expression: valueLeft ) * self.evaluate( expression: valueLeft )
        }
    }
}
//20 + 10 – 34
var expr = ArithmeticExpression.Addition( .Number(20), .Subtraction( .Number(10), .Number(34) ) )
expr.evaluate()
//20/5+30-10*3
expr = ArithmeticExpression.Subtraction(.Addition(.Division(.Number(20), .Number(5)), .Number(30)), (.Multiplication(.Number(10), .Number(3))))
expr.evaluate()