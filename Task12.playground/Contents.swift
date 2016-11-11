//: Playground - noun: a place where people can play

import UIKit

/*
 Задание 1
 Вернемся к заданию 2 из предыдущей главы. Объедините написанный код анализа коллекции шахмат, хранящейся в переменной Chessmans, в функции с именем chessAnalizer(). В качестве входного параметра функция должна принимать словарь того же типа, что и переменная Chessmans.
 */

typealias Chessman = [String:(alpha:Character,num:Int)?]

var dictionary: Chessman = ["White horse":(alpha:"A",num: 2),
                            "Black king":(alpha:"C",num: 6),
                            "White king":(nil)]

func chessAnalizer(dictionary: Chessman) {
    for (nameOfFigure, coordinates) in dictionary {
        if coordinates == nil {
            print("\(nameOfFigure) was killed")
        } else {
            print("Location for \(nameOfFigure) is \(dictionary[nameOfFigure]!!)")
        }
    }
}
//chessAnalizer(dictionary: dictionary)


/*
 Задание 2
 Создайте функцию, которая предназначена для изменения состава и характеристик фигур в переменной Chessmans. В качестве входных параметров она должна принимать саму переменную Chessmans (как сквозной параметр), в которую будут вноситься изменения, имя фигуры (значение типа String) и опциональный кортеж координат фигуры (значение типа (Character, Int)?).
 При этом должна проводиться проверка факта существования фигуры в словаре. Если фигура не существует, то информация о ней добавляется, в противном случае информация обновляется в соответствии с переданной информацией.
 */
func changeFigure( dictionary: inout Chessman, name: String, coordinates: (alpha:Character,num:Int)?) {
    if dictionary[name] != nil && dictionary[name]! != nil && coordinates != nil {
        let (alpha, num) = coordinates!
        dictionary[name]!!.alpha = alpha
        dictionary[name]!!.num = num
    } else {
        dictionary[name] = coordinates
    }
}
changeFigure(dictionary: &dictionary, name: "", coordinates: (alpha: "с", num: 5))
print(dictionary)

