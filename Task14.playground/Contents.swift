//: Playground - noun: a place where people can play

import UIKit


class Chessman {
    // типы фигур
    enum ChessmanType {
        case King
        case Castle
        case Bishop
        case Pawn
        case Knight
        case Queen
    }
    // цвета фигур
    enum CheesmanColor {
        case Black
        case White
    }
    let type: ChessmanType
    let color: CheesmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: CheesmanColor, figure:
        Character){
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    init(type: ChessmanType, color: CheesmanColor, figure:
        Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num:
            coordinates.1)
    }
    func setCoordinates(char c:String, num n: Int){
        self.coordinates = (c, n)
    }
    func kill(){
        self.coordinates = nil
    }
}
var QueenWhite = Chessman(type: .Queen, color: .White, figure: "♛")
var QueenBlack = Chessman(type: .Queen, color: .Black, figure: "♛", coordinates: ("A", 6))