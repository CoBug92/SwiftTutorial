//: Playground - noun: a place where people can play

import UIKit

/*
 1. Создайте псевдоним Chessman для типа словаря [String:(alpha:Character,num:Int)?]. Данный тип описывает шахматную фигуру на игровом поле. В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, фигура убита (не имеет координат на игровом поле).
 */
typealias Chessman = [String:(alpha:Character,num:Int)?]
/*
 2. Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
 */
var dictionary: Chessman = ["White horse":(alpha:"A",num: 2),
                            "Black king":(alpha:"C",num: 6),
                            "White king":(nil)]
/*
 3. Создайте конструкцию if-else, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.
 4. Для получения координат переданной фигуры используйте опциональное связывание.
 5. Сохраните данную программу, так как мы вернемся к ней в последующем.

-------
 Оператор объединения по nil (a ?? b) извлекает опционал a, если он содержит значение, или возвращает значение по умолчанию b, если a равно nil. Выражение a может быть только опционалом. Выражение b должно быть такого же типа, что и значение внутри a.
 -----
 */
if  ((dictionary["White horse"] ?? nil) != nil) {
    print("Location of the white horse is \(dictionary["White horse"]!!)")
} else {
    print("Your figure was killed")
}
if  ((dictionary["Black king"] ?? nil) != nil) {
    print("Location of the black king is \(dictionary["Black king"]!!)")
} else {
    print("Your figure was killed")
}
if  ((dictionary["White king"] ?? nil) != nil) {
    print("Location of the white king is \(dictionary["White king"]!!)")
} else {
    print("Your figure was killed")
}