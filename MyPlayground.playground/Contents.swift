//: Playground - noun: a place where people can play

import UIKit


var selectedNumBox1 = [String]()
var selectedNumBox2 = [String]()
var selectedNumBox3 = [String]()
var selectedNumBox4 = [String]()
var selectedNumBox5 = [String]()
var selectedNumBox7 = [String]()
var selectedNumBox6 = [String]()
var selectedNumBox8 = [String]()

func putLotteryNumberInBox(number: String) {
    let ar = number.components(separatedBy: ",")
    var i = 0
    for item in ar {
        if i==0 {
            selectedNumBox1 = item.components(separatedBy: " ")
        }
        if i==1 {
            selectedNumBox2 = item.components(separatedBy: " ")
        }
        if i==2 {
            selectedNumBox3 = item.components(separatedBy: " ")
        }
        i = i + 1
    }
}

putLotteryNumberInBox(number: "01 02 03 04 05 , 06 07")

selectedNumBox1
selectedNumBox2
selectedNumBox3
