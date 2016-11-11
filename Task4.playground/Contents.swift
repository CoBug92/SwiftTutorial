//: Playground - noun: a place where people can play

import UIKit

/*
 1. Объявите переменную типа String и запишите в нее произ- вольный строковый литерал.
 */
var value1 = "Random literal"
/*
 2. Объявите константу типа Character, содержащую произвольный символ латинского алфавита.
 */
let value2: Character = "="
/*
 3. Объявите две переменные типа Int и запишите в них произ- вольные значения.
 */
var value3 = 1
var value4 = 3
/*
 4. Одним выражением объедините в строковый литерал пере- менную типа String, константу типа Character и сумму переменных типа Int, а результат запишите в новую кон- станту.
 */
let value5 = value1 + String(value2) + String(value3) + "\(value4)"
/*
 5. Выведите данную константу на консоль.
 */
print(value5)