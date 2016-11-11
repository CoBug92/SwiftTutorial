//: Playground - noun: a place where people can play

import UIKit

/*
 1. Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два — это числа с плавающей точкой. Они будут со- держать операнды для выполняемой операции.
 Третий элемент — строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 */
typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
/*
 2. Создайте константу типа Operation и заполните значения ее элементов произвольным образом, например (3.1, 33, "+").
 */
let tuple1: Operation = (3.1, 33, "+")
/*
 3. Используя конструкцию switch-case, вычислите значение операции, указанной в элементе operation созданного кортежа для операндов в его первых двух элементах. Оператор switch должен корректно обрабатывать любую из перечис- ленных операций.
 */
switch tuple1.operation {
case "+": tuple1.operandOne + tuple1.operandTwo
case "-": tuple1.operandOne - tuple1.operandTwo
case "*": tuple1.operandOne * tuple1.operandTwo
case "/": tuple1.operandOne / tuple1.operandTwo
default: break
}
/*
 4. В созданной константе замените символ операции другим произвольным символом и проверьте правильность работы конструкции switch-case.
 */
let tuple2: Operation = (3.1, 33, "-")
switch tuple2.operation {
case "+": tuple2.operandOne + tuple1.operandTwo
case "-": tuple2.operandOne - tuple1.operandTwo
case "*": tuple2.operandOne * tuple1.operandTwo
case "/": tuple2.operandOne / tuple1.operandTwo
default: break
}

//------
let tuple3: Operation = (3.1, 33, "*")
switch tuple3.operation {
case "+": tuple3.operandOne + tuple1.operandTwo
case "-": tuple3.operandOne - tuple1.operandTwo
case "*": tuple3.operandOne * tuple1.operandTwo
case "/": tuple3.operandOne / tuple1.operandTwo
default: break
}

//------
let tuple4: Operation = (3.1, 33, "/")
switch tuple4.operation {
case "+": tuple4.operandOne + tuple1.operandTwo
case "-": tuple4.operandOne - tuple1.operandTwo
case "*": tuple4.operandOne * tuple1.operandTwo
case "/": tuple4.operandOne / tuple1.operandTwo
default: break
}

//------