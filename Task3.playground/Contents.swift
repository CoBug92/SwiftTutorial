//: Playground - noun: a place where people can play

import UIKit

/*
 1. Объявите три пустые константы: одну типа Int, одну типа Float и одну типа Double. Сделайте это в одной строке.
 */
let value1: Int, value2: Float, value3: Double
/*
 2. Проинициализируйте для них следующие значения: Int — 18, Float — 16.4, Double — 5.7. Сделайте это в одной строке.
 */
value1 = 18; value2 = 16.4; value3 = 5.7
/*
 3. Найдите сумму всех трех констант и запишите ее в переменную типа Float.
 */
var sumAllValues = Float(value1) + value2 + Float(value3)
/*
 4. Найдите произведение всех трех констант и запишите его в переменную типа Int. Помните, что вам необходимо получить результат с минимальной погрешностью.
 */
var multAllValues = value1 * Int(Double(value2) * value3)
/*
 5. Найдите остаток от деления константы типа Float на константу типа Double и запишите ее в переменную типа Double.
 */
var modulo = Double(value2) % value3
/*
 6. Выведите на консоль все три результата с использованием поясняющего текста.
 */
print("Sum all values = \(sumAllValues),\n multiplication \(multAllValues),\n modulo \(modulo)")
