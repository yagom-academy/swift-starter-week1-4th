//
//  functions.swift
//  CodeStarterCamp_Week1
//

import Foundation
func drawPeperobar(length: Int) {
    for _ in 1...length {
        print(" | | ")
    }
}
func drawPeperobodies(peperoBody: String, peperoTopping: String) -> String{
    return peperoBody+peperoTopping
}
var peperobodyResult = ""
func drawPeperobodyLength(length: Int) {
    let peperobodyReversedResult = String(peperobodyResult.reversed())
    for evenodd in 1...length {
        if evenodd % 2 == 1 {
            print(peperobodyResult)
        }
        else {
            print(peperobodyReversedResult)
        }
    }
}
func drawTotalPepero(peperoBodyLength: Int, peperoBodyContent: String, peperoBodyToppingContent: String, peperoBarLength: Int) {
    print("""

    <정보>
    길이 : \(peperoBodyLength)
    몸통 : \(peperoBodyContent)
    토핑 : \(peperoBodyToppingContent)
    막대길이 : \(peperoBarLength)

    """)
    peperobodyResult = drawPeperobodies(peperoBody: peperoBodyContent, peperoTopping: peperoBodyToppingContent)
    drawPeperobodyLength(length: peperoBodyLength)
    drawPeperobar(length: peperoBarLength)
}
