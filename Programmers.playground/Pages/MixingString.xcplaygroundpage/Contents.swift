/*
 문제 설명
 길이가 같은 두 문자열 str1과 str2가 주어집니다.

 두 문자열의 각 문자가 앞에서부터 서로 번갈아가면서 한 번씩 등장하는 문자열을 만들어 return 하는 solution 함수를 완성해 주세요.

 제한사항
 1 ≤ str1의 길이 = str2의 길이 ≤ 10
 str1과 str2는 알파벳 소문자로 이루어진 문자열입니다.
 
 입출력 예
 str1       str2        result
 "aaaaa"    "bbbbb"    "ababababab"
*/

// my solution
import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    let arrayStr1 = Array(str1)
    let arrayStr2 = Array(str2)
    for i in 0..<arrayStr1.count {
        result += String(arrayStr1[i]) + String(arrayStr2[i])
    }
    return result
}

// best solution
func bestSolution(_ str1:String, _ str2:String) -> String {
    zip(str1, str2).map { String($0) + String($1) }.joined()
}

solution("aaaaa", "bbbbb")
bestSolution("aaaaa", "bbbbb")

/*
 zip(_:_:)
 Creates a sequence of pairs built out of two underlying sequences.
 
 If the two sequences passed to zip(_:_:) are different lengths, the resulting sequence is the same length as the shorter sequence. In this example, the resulting array is the same length as words
 
 Return Value
 A sequence of tuple pairs, where the elements of each pair are corresponding elements of sequence1 and sequence2.
 
 
 Example
 let words = ["one", "two", "three", "four"]
 let numbers = 1...4

 for (word, number) in zip(words, numbers) {
     print("\(word): \(number)")
 }
 // Prints "one: 1"
 // Prints "two: 2"
 // Prints "three: 3"
 // Prints "four: 4"
 */
