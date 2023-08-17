//Класи: Баскетбол, футбол, теніс, пінг понг, волейбол, шахи, покер, фехтування
//Функції: 3+
//Атрибути: 5+
//Зовнішні функції: startGame(team: [Athlete], with: Equipment)

enum EquipmentType: String {
    case without, soccerBall, volleyBall, basketBall, tennisRacquet, pingPongRacquet, chessBoard, cards, sword
}

class Athlete {
    private var league = "Professional"
    private func changeLeague(newLeague: String){
        self.league = newLeague
    }
}

class Equipment: Athlete {
    var equipmentType: EquipmentType
    var count: Int
    
    init(equipmentType: EquipmentType, count: Int){
        self.equipmentType = equipmentType
        self.count = count
    }
}

class Teams: Athlete {
    var withoutTeam: [String] = []
    var bascetbalTeam = ["Jordan", "James", "Abdul-Jabbar", "Russell", "Johnson", "Chamberlain"]
    var footballTeam = ["Messi", "Ronaldo", "Xavi", "Iniesta", "Ibrahimovic", "Falcao"]
    var volleyballTeam = ["Timmons", "Piccinini", "Zaytsev", "Reece", "Conte", "Marouf"]
    var tennisTeam = ["Alcaraz", "Djokovic"]
    var pingPongteam = ["Zhendong", "Chuqin"]
    var chessTeam = ["Magnus", "Fabiano"]
    var pokerTeam = ["Ivey", "Hellmuth", "Negreanu", "Brunson"]
    var fencingTeam = ["Beljajeva", "Embrich"]
   
    func newBaskTeam(newBaskTeam: [String]) {
            self.bascetbalTeam = newBaskTeam
        }
    func newFootTeam(footballTeam: [String]) {
            self.footballTeam = footballTeam
        }
    func newvollTeam(volleyballTeam: [String]) {
            self.volleyballTeam = volleyballTeam
        }
    func newTennisTeam(tennisTeam: [String]) {
            self.tennisTeam = tennisTeam
        }
    func newPingPongTeam(pingPongteam: [String]) {
            self.pingPongteam = pingPongteam
        }
    func newChessTeam(chessTeam: [String]) {
            self.chessTeam = chessTeam
        }
    func newPokerTeam(pokerTeam: [String]) {
            self.pokerTeam = pokerTeam
        }
    func newFencingTeam(fencingTeam: [String]) {
            self.fencingTeam = fencingTeam
        }
}

class Sport: Athlete {
    var duration: Int
    var playersCount: Int
    
    init(duration: Int, playersCount: Int){
        self.duration = duration
        self.playersCount = playersCount
    }
    
    func infoDuration() {
        print("The match lasts \(duration) minutes")
    }
    
    func changePlayersCount(to newValue: Int) {
        self.playersCount = newValue
    }
    
    func addExtraTime(howMuch: Int) {
        self.duration += howMuch
    }
}

class Basketball: Sport {
    let equipmentType: EquipmentType = .basketBall
    let typeOfBasketball = "Standart"
}

class Football: Sport {
    let equipmentType: EquipmentType = .soccerBall
    let typeOfFotball = "Classic"
}

class Volleyball: Sport {
    let equipmentType: EquipmentType = .volleyBall
    let typeOfSurface = "Wood"
}

class Tennis: Sport {
    let equipmentType: EquipmentType = .tennisRacquet
    let gameType = "Single player"
}

class PingPong: Sport {
    let equipmentType: EquipmentType = .pingPongRacquet
    let typeOfSurface = "Table"
}

class Chess: Sport {
    let equipmentType: EquipmentType = .chessBoard
    let typeOfGame = "Classic chess"
}

class Poker: Sport {
    let equipmentType: EquipmentType = .cards
    let typeOfPoker = "Texas Holdem"
}

class Fencing: Sport {
    let equipmentType: EquipmentType = .sword
    let additionaleEquipment = "Fencing suit"
}

func startGame(team: Athlete, with: Equipment) {
    
    if let team = team as? Teams{
        switch with.equipmentType {
        case .soccerBall:
            print ("Football game started with team: \(team.footballTeam.joined(separator: ", "))")
        case .basketBall:
            print ("Basketball game started with team: \(team.bascetbalTeam.joined(separator: ", "))")
        case .volleyBall:
            print ("Volleyball game started with team: \(team.volleyballTeam.joined(separator: ", "))")
        case .tennisRacquet:
            print ("Tennis game started with team: \(team.tennisTeam.joined(separator: ", "))")
        case .pingPongRacquet:
            print ("PingPong game started with team: \(team.pingPongteam.joined(separator: ", "))")
        case .chessBoard:
            print ("Chess game started with team: \(team.chessTeam.joined(separator: ", "))")
        case .cards:
            print ("Poker game started with team: \(team.pokerTeam.joined(separator: ", "))")
        case .sword:
            print ("Fencing game started with team: \(team.fencingTeam.joined(separator: ", "))")
        default:
            break
        }
    } else {
        print("Game can`t start")
    }
}

let teams = Teams()
let eq = Equipment(equipmentType: .basketBall, count: 33)
startGame(team: teams, with: eq)

