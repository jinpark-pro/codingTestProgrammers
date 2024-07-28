# Codding Test - Programmers (Swift)

## Lv. 0

### 문자열 반복

- 학습 내용
  - `String(repeat: String, count: Int)`
  - `print(String, terminator: String)`
  - `_`

### 대소문자 바꿔서 출력하기

- 학습 내용
  - `$0.isUppercase`

### 특수문자 출력하기

- 학습 내용
  - 문자열 앞 뒤로 `#` 을 사용하면 특수문자를 그대로 출력
  - `print(#"!@#$%^&*(\'"<>?:;"#)`

### 문자열 겹쳐쓰기

- 학습 내용
  - `.replaceSubrange(Range<String.Index>, with: Characters)`

### 문자열 섞기

- 학습 내용
  - `zip(Sequence1, Sequence2) -> A sequence of tuple pairs`

    ```swift
      let words = ["one", "two", "three", "four"]
      let numbers = 1...4

      for (word, number) in zip(words, numbers) {
          print("\(word): \(number)")
      }
      // Prints "one: 1"
      // Prints "two: 2"
      // Prints "three: 3"
      // Prints "four: 4"
    ```
