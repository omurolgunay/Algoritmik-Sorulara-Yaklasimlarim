/*
 İlk adım: Verilen bir sayıdan büyük, en küçük fibonacci sayısını bulup ekrana yazdırın. Örneğin size verilen sayı 20 olsaydı, bu sayıdan büyük en küçük fibonacci sayısı 21 olacaktı.
 İkinci adım: İlk adımda bulduğunuz sayının 1 fazlasının asal çarpanlarının toplamını bulup ekrana yazdırın. Örneğin ilk soruda cevap 24 olsaydı, asal çarpanları 2 ve 3 olacak, cevap da 5 olacaktı.
 
 Sizden cevapları bulmanızın beklendiği sayı: 10000
 Ek Bilgiler:
 Fibonacci dizisi, her sayının kendinden öncekiyle toplanması sonucu oluşan bir sayı dizisidir. Fibonacci serisi aşağıdaki şekilde başlar:
 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, …
 Asal çarpanlar, bir sayıyı bölebilen asal sayılardır. Örneğin 12’nin çarpanları 1,2,3,4,6 ve 12’dir. Bunlardan yalnızca 2 ve 3 asaldır, bu nedenle asal çarpanlar 2 ve 3’tür.
 */

/* -------------------------- 1 -------------------------- */

func minFibonacciNumberGraterThanAGivenNumber(_ number:Int) -> Int{
    var firstNumber = 0
    var secondNumber = 1
    repeat{
        let sum = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = sum
    }while secondNumber < number
    return secondNumber
}

let fibonacci = minFibonacciNumberGraterThanAGivenNumber(10000)
print(fibonacci)

/* -------------------------- 2 -------------------------- */

func sumOfPrimeFactors( number:Int) -> Int{
    var factorsArray = [Int]()
    var primeFactorsSum = 0
    for n in 1...number{
        if number % n == 0{
            factorsArray.append(n)
        }
    }
    for factor in factorsArray{
        for index in stride(from: 2, to: factorsArray.last! + 1, by: 1){
            if factor % index == 0{
                if index >= factor{
                    primeFactorsSum += factor
                } else {
                    break
                }
            }
        }
    }
    return primeFactorsSum
}

let sum = sumOfPrimeFactors(number: fibonacci + 1)
print(sum)

/*
 Soru: 4 milyondan küçük çift fibonacci sayılarının toplamını bulunuz
 */
let limit = 4000000
var firstNumber = 0
var secondNumnber = 1
var total = 0

while secondNumnber < limit{
    let sum = firstNumber + secondNumnber
    firstNumber = secondNumnber
    secondNumnber = sum
    if secondNumnber % 2 == 0 && secondNumnber < limit{
        total += secondNumnber
    }
}

print(total)
