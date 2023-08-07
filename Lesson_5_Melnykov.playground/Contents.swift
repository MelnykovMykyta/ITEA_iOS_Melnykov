//onlyThree - приймає рейндж, пробігається по ньому і повертає масив тільки з кратними числами 3

func onlyThree(_ range: Range<Int>) -> [Int]{
    range.filter({$0 % 3 == 0})
}



//printDuplicates - приймає два масиви, виводить у консоль лише числа які є у першому, та другому

func printDuplicates(firstArr: [Int], secondArr: [Int]){
    let resArray = (Set(firstArr).intersection(Set(secondArr))).sorted()
    resArray.forEach( {print($0)} )
}



//symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)

func symbolCount(someString: String) -> [String: Int]{
    var resDic: [String: Int] = [:]
    someString.forEach({char in
        var count = 0
        for elem in someString where elem == char{
            count += 1
        }
        resDic["\(char)"] = count

    })
    return resDic
}



//sameCharacters - приймає дві строки та completion (кложуру), після обробки строк, кложура приймає два набори символів і виводить у консоль тільки ті, що повторюються в обох рядках.

let myCompletion: (Set<Character>, Set<Character>) -> Void = {firstSet, secondSet in
    firstSet.intersection(secondSet).forEach( {print($0)} )
}

func sameCharacters(fStr: String, sStr: String, completion: (Set<Character>, Set<Character>) -> Void){
    let fSet = Set(fStr)
    let sSet = Set(sStr)
    completion(fSet, sSet)
}
