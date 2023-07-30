//iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool

let myAge = 28

func iAmOlder(_ myAge: Int, _ otherAge: Int) -> Bool {
    myAge > otherAge
}

iAmOlder(myAge, 39)




//yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль

func yearOfBirth(_ myAge: Int, _ currentYear: Int) {
    print(currentYear - myAge)
}

yearOfBirth(28, 2023)




//onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа

func onlyEvenNumbers(_ range: Range<Int>){
    for item in range where item % 2 == 0{
        print(item)
    }
}

onlyEvenNumbers(1..<9)




//getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає

func getSum(_ firstNum: Int, _ secondNum: Int, _ thirdNum: Int, _ fourthNum: Int) -> Int{
    let sum = (firstNum + secondNum) * thirdNum % fourthNum
    print(sum)
    return sum
}

getSum(2, 2, 2, 3)
