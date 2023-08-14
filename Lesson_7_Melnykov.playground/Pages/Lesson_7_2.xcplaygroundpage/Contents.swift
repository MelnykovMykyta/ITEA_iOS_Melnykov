//Класи: Баскетбол, футбол, теніс, пінг понг, волейбол, шахи, покер, фехтування
//Функції: 3+
//Атрибути: 5+
//Зовнішні функції: startGame(team: [Athlete], with: Equipment)

final class Athlete {
    var name: String
    var surname: String
    var age: Int
    var sport: String
    var isProfessional: Bool
    
    func isProfessional (_ decision: Bool){
        isProfessional = decision ? true : false
    }
    init(name: String, surname: String, age: Int, sport: String, isProfessional: Bool){
        self.name = name
        self.surname = surname
        self.age = age
        self.sport = sport
        self.isProfessional = isProfessional
    }
}

class Equipment {
    var weight: Int
    var count: Int
    
    init(weight: Int, count: Int){
        self.weight = weight
        self.count = count
    }
}

class SoccerBall: Equipment{
    var name = "Soccer ball"
}

class VolleyballBall: Equipment{
    var name = "Volleyball ball"
}

class BasketballBall: Equipment{
    var name = "Basketball ball"
}

class TennisRacquet: Equipment{
    var name = "Tennis racquet"
}

class PingPongRacquet: Equipment{
    var name = "Ping-Pong racquet"
}

class ChessBoard: Equipment{
    var name = "Chess board"
}

class Cards: Equipment{
    var name = "Poker cards"
}

class FencingSword: Equipment{
    var name = "encing sword"
}

class SportWithBall{
    let equipment = "Ball"
    var duration: Int
    var playersCount: Int
    var reservePlayers: Bool
    
    public func info(){
        print("This sport game uses a \(equipment) and the match lasts \(duration) minutes")
    }
    
    public func changePlayersCount (to newValue: Int) {
        self.playersCount = newValue
    }
    
    public func addExtraTime (howMuch: Int) {
        self.duration += howMuch
    }
    
    init(duration: Int, playersCount: Int, reservePlayers: Bool){
        self.duration = duration
        self.playersCount = playersCount
        self.reservePlayers = reservePlayers
    }
}

class Basketball: SportWithBall {
    var typeOfBasketball = "Standart"
    func setMiniBasketball() {
        self.typeOfBasketball = "Mini basketball"
    }
}

class Football: SportWithBall {
    var typeOfFotball = "Classic"
    
    func changeTypeMini (){
        self.typeOfFotball = "Mini football"
    }
}

class Volleyball: SportWithBall {
    var typeOfSurface = "Wood"
    
    func setPlasticSurface (){
        self.typeOfSurface = "Plastic"
    }
}

class Tennis {
    let equipment = "Racquet"
    var gameDuration: Int
    var playersCount = 2
    var gameCount: Int
    
    func setDoubles() {
        self.playersCount = 4
    }
    
    init(gameDuration: Int, gameCount: Int){
        self.gameDuration = gameDuration
        self.gameCount = gameCount
    }
}

class PingPong: Tennis{
    let typeOfSurface = "Table"
}

class Chess {
    let equipment = "Board"
    let playersCount = 2
    let figureCount = 32
}

class Poker {
    let equipment = "Card"
    let cardsCount = 52
    var typeOfPoker = "Texas Holdem"
    
    func setOmaha(){
        self.typeOfPoker = "Omaha"
    }
}

class Fencing {
    let equipment = "Sword"
    let victoryScore = 15
    let optionalEquipment = "Fencing suit"
}

func startGame(team: [Athlete], with: Equipment){
    var football = team.filter({$0.sport == "Football"})
    var basketball = team.filter({$0.sport == "Basketball"})
    var volleyball = team.filter({$0.sport == "Volleyball"})
    var tennis = team.filter({$0.sport == "Tennis"})
    var pingpong = team.filter({$0.sport == "Ping-pong"})
    var chess = team.filter({$0.sport == "Chess"})
    var poker = team.filter({$0.sport == "Poker"})
    var fencing = team.filter({$0.sport == "Fencing"})
    
    switch with{
    case is SoccerBall where football.count == team.count:
        print("Football game started")
    case is BasketballBall where basketball.count == team.count:
        print("Basketball game started")
    case is VolleyballBall where volleyball.count == team.count:
        print("Volleyball game started")
    case is TennisRacquet where tennis.count == team.count:
        print("Tennis game started")
    case is PingPongRacquet where pingpong.count == team.count:
        print("PingPong game started")
    case is ChessBoard where chess.count == team.count:
        print("Chess game started")
    case is Cards where poker.count == team.count:
        print("Poker game started")
    case is FencingSword where fencing.count == team.count:
        print("Fencing game started")
    default:
        print("The the game can`t start because equipment not for this sport or athletes from various sports")
    }
}

let a = Athlete(name: "Nikita", surname: "Melnykov", age: 28, sport: "Poker", isProfessional: true)
let b = Athlete(name: "Irina", surname: "Iriniva", age: 20, sport: "Poker", isProfessional: false)
let go = Volleyball(duration: 15, playersCount: 10, reservePlayers: true)
let eq = Cards(weight: 100, count: 2)

startGame(team: [a, b], with: eq)
