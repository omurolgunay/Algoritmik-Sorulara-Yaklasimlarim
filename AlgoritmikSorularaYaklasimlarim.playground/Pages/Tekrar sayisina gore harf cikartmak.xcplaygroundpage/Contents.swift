/*
 Senaryo:
 Elimizde sadece harflerden ve boşluklardan oluşan (noktalama işaretleri veya sayılar yok) uzun stringler var. Bu stringlerin içinde doğal olarak bazı harfler tekrar ediyor, mesela ‘a’ harfi 20 farklı indexte bulunabiliyor. Biz, verilen bir sayı kadar, veya daha fazla tekrarlanan harfleri silmek istiyoruz. Örnek olarak “2” sayısı verildiğinde, 2 ve 2’den fazla tekrarlayan harfler string’den çıkarılacak.
 Örnek:
 Elimizdeki string “aaba kouq bux” olduğunu düşünelim. ‘a’ harfi 3 kez, ‘b’ ve ‘u’ harfleri 2 kez
 tekrarlanıyor.
  Tekrar sayısı “2” verildiğinde, ‘a’,‘b’ ve ‘u’ harfleri çıkarılacak, sonuç: “koq x”
  Tekrar sayısı “3” verildiğinde, ‘a’ harfi çıkarılacak, sonuç: “b kouq bux”
  Tekrar sayısı “4” verildiğinde, hiç bir harf çıkarılmayacak, sonuç: “aaba kouq bux”
 */
import UIKit

let string = "aaba kouq bux"
var letterArray = string.sorted()
var letterCountDic = [String.Element:Int]()

for letter in letterArray{
    if !letter.isWhitespace{
        letterCountDic[letter] = (letterCountDic[letter] ?? 0) + 1
    }
}

func removeRepetitiveLetterFromText(_ text: String, times: Int) -> String{
    var filtered = text
    
    for (key, value) in letterCountDic{
        if value >= times{
            filtered = filtered.filter{$0 != key}
        }
    }
    return filtered
}

let result = removeRepetitiveLetterFromText(string, times: 2)
print(result)
