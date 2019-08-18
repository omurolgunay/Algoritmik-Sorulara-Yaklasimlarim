// Soru: 100 kişiye 100 lirayı; 1. kişi kalan paranın %1'ini, 2. kişi kalan paranın %2'sini, n'inci kişi kalan paranın %n'ini alacak şekilde dağıtılırsa en fazla parayı kaçıncı kişi alır.

import UIKit

var peopleCount = 100
var restOfAmount = 100.0
var resultDic = [Int:Double]()

for person in 1...peopleCount{
    let receivingMoney = (restOfAmount*Double(person)) / 100
    restOfAmount -= receivingMoney
    if restOfAmount > receivingMoney {
        resultDic.updateValue(receivingMoney, forKey:person)
    }else{
        break
    }
}

let sortedDic = resultDic.sorted(by: { $0.value > $1.value })
print(sortedDic.first!)

