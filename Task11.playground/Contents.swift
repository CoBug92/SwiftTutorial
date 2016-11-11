//: Playground - noun: a place where people can play

import UIKit

/*
 Представьте, что вы являетесь преподавателем курсов по шахматам. Ваши занятия посещает три ученика.
 1. Создайте словарь, который будет содержать информацию о ваших студентах и их успехах. Ключом словаря должна быть фамилия, а значением — другой словарь, содержащий дату занятия и полученную на этом занятии оценку.
 Тип данных словаря должен быть [String:[String:UInt]].
 В вашем электронном журнале должно находиться по две оценки для каждого из трех учеников. Фамилии, даты за- нятий и оценки придумайте сами.
 */
typealias Students = [String:[String:UInt]]
let dictionary: Students = ["Kostiuchenko":["10.11.2016": 5, "11.11.2016": 3],
                            "Djussoev":["09.11.2016": 3, "12.11.2016": 4],
                            "Vikharev":["08.11.2016": 5, "13.11.2016": 5]]
/*
 2. Посчитайте средний балл каждого студента и средний балл всей группы целиком и выведите всю полученную информацию на консоль.
 */
var summMark: UInt = 0
var countMark: UInt = 0
var name: String
for (secondNames, marks) in dictionary {
    name = secondNames
    if name == secondNames {
        for (date, mark) in marks {
            countMark = UInt(dictionary[name]!.count)
            summMark += mark
        }
        print("Средняя оценка студента \(name) \((Double(summMark)/Double(countMark)))")
        summMark = 0
    }
}

var summAllMarks: UInt = 0
var countMarks: UInt = 0
for (secondNames, marks) in dictionary {
    for (date, mark) in marks {
        summAllMarks += mark
    }
    countMarks += UInt(dictionary[secondNames]!.count)
}
print("\nСредняя оценка группы = \(Double(summAllMarks)/Double(countMarks))\n")

/*
 Задание 2
 Вернемся к заданию из главы 9, в котором вы описывали шахматную фигуру и создавали конструкцию if-else, проверяющую наличие фигуры на игровом поле.
 Вам необходимо доработать данную программу таким образом, чтобы она автоматически анализировала не одну переданную ей фигуру, а все фигуры, хранящиеся в переменной Chessmans.
 */
typealias Chessman = [String:(alpha:Character,num:Int)?]
var dictionaryForChess: Chessman = ["White horse":(alpha:"A",num: 2),
                                    "Black king":(alpha:"C",num: 6),
                                    "White king":(nil)]
for (nameOfFigure, coordinates) in dictionaryForChess {
    if coordinates == nil {
        print("\(nameOfFigure) was killed")
    } else {
        print("Location for \(nameOfFigure) is \(dictionaryForChess[nameOfFigure]!!)")
    }
}
