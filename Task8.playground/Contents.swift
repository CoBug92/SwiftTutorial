//: Playground - noun: a place where people can play

import UIKit

/*
 1. Создайте псевдоним типа String с именем Text.
 */
typealias Text = String
/*
 2. Объявите три константы типа Text. Значения двух констант должны состоять только из цифр, третьей — из цифр и букв.
 */
let value1: Text = "1234"
let value2: Text = "567890"
let value3: Text = "123qwerty"
/*
 3. Из всех трех констант найдите те, которые состоят только из цифр, и выведите их на консоль. Для преобразования строки в число используйте функцию Int().
 */
if (Int(value1) != nil){
    print(value1)
}
if (Int(value2) != nil){
    print(value2)
}
if (Int(value3) != nil){
    print(value1)
}
/*
 4. Создайте псевдоним для типа (numberOne: Text?, numberTwo: Text?)? с именем TupleType. Данный тип является опциональным и также содержит в себе опциональные значения.
 */
typealias TupleType = (numberOne: Text?, numberTwo: Text?)?
/*
 5. Создайте три переменные типа TupleType, содержащие следующие значения: ("190", "67"), ("100", nil) , ("-65", "70").
 */
var tuple1: TupleType = ("190", "67")
var tuple2: TupleType = ("100", nil)
var tuple3: TupleType = ("-65", "70")
/*
 6. Выведите значения элементов тех кортежей, в которых ни один из элементов не инициализирован как nil.
 */
if (tuple1?.numberOne != nil) && (tuple1?.numberTwo != nil) {
    print("(\(tuple1!.numberOne!),\(tuple1!.numberTwo!)) doesn't equal nil")
}
if (tuple2?.numberOne != nil) && (tuple2?.numberTwo != nil) {
    print("(\(tuple2!.numberOne!),\(tuple2!.numberTwo!)) doesn't equal nil")
}
if (tuple3?.numberOne != nil) && (tuple3?.numberTwo != nil) {
    print("(\(tuple3!.numberOne!),\(tuple3!.numberTwo!)) doesn't equal nil")
}


