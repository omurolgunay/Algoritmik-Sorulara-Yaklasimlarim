/*
 Soru 3 : 13195’in asal çarpanları 5, 7, 13 ve 29’dur.
 600851475143 sayısının en büyük asal çarpanı kaçtır?
 */
import UIKit

var number = 600851475143
var primeNumber = 0

while number > 2 {
    for index in 2...number{
        if number % index == 0{
            primeNumber = index
            number /= index
            break
        }
    }
}

print(primeNumber) //6857
