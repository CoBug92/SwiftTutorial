//: Playground - noun: a place where people can play

import UIKit

/*
 1. Объявите две логические переменные. Значение первой должно быть равно true, второй — false.
 */
var value1 = true
var value2 = false
/*
 2. Запишите в две константы результат использования их в качестве операндов для операторов логического И и ИЛИ.
 */
let value3 = value1 && value2
let value4 = value1 || value2
/*
 3. Выведите на консоль значения обеих получившихся констант.
 */
print("\(value3),\n\(value4)")
/*
 4. Вычислите результат следующих логических выражений. При этом постарайтесь не использовать Xcode:
 ( ( true && false ) || true )
 true && false && true || ( true || false ) 
 false || ( false || true ) && ( true && false )
 */
let value5 = (value1 && value2) || value1
let value6 = value1 && value2 && value1 || (value1 || value2)
let value7 = value2 || (value2 || value1) && (value1 && value2)

