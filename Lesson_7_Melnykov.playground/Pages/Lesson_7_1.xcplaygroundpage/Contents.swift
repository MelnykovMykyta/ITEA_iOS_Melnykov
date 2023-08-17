// Класи: Кіт, собака, папуга, півень, корова
//Функції: voice, fly
//Атрибути: name, feetCount, wingsCount,
//Зовнішні функції: getMilk, getEgg

open class Animal {
    var name: String
    
    func voice(){
        print("Voice on")
    }
    
    init(name: String){
        self.name = name
    }
}

class Mammal: Animal {
    var feetCount: Int
    init(name: String, feetCount: Int) {
        self.feetCount = feetCount
        super.init(name: name)
    }
}

class Bird: Animal {
    let wingsCount: Int
    
    init(name: String, wingsCount: Int) {
        self.wingsCount = wingsCount
        super.init(name: name)
    }
}

class Cat: Mammal{
    override func voice(){
        super.voice()
        print("\(self.name) say meow")
    }
}

class Dog: Mammal {
    override func voice(){
        super.voice()
        print("\(self.name) say arf-arf!")
    }
}

class Parrot: Bird {
    override func voice(){
        super.voice()
        print("\(self.name) say chirik-chirik")
    }
}

class Cock: Bird{
    override func voice(){
        super.voice()
        print("\(self.name) say cockadoodledoo")
    }
}

class Cow: Mammal {
    override func voice(){
        super.voice()
        print("\(self.name) say moo")
    }
}


func getMilk(_ animal: Mammal){
    print("\(animal.name) is mammal, so it can give milk")
}

func getEgg(_ animal: Bird){
    print("\(animal.name) can give egg if it is not boy")
}

