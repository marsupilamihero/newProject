import UIKit

var greeting = "Hello, playground"

var playerNumber = Int.random(in: 2...14)
var cpuNumber = Int.random(in: 2...14)

var playerCard = "card" + String(playerNumber)
var cpuCard = "card" + String(cpuNumber)

var playerScore: Int = 0
var cpuScore: Int = 0

func determineWinner (_ player: Int,_ cpu: Int) -> String {
    var result: String = ""
    if playerNumber == cpuNumber {
        result = "Tied"
    } else if playerNumber > cpuNumber {
        result = "Player"
    } else if playerNumber < cpuNumber {
        result = "CPU"
    }
    return result
}

var winner = determineWinner(playerNumber, cpuNumber)

func theWinner (_ result: String) -> Int {
    if result == "Tied" {
        playerScore += 0
    } else if result == "Player" {
        playerScore += 1
    } else if result == "CPU" {
        cpuScore += 1
    }
}
