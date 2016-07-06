import UIKit


// Player Data
let allPlayersArray: [[String : String]] =
[["Name" : "Joe Smith", "Height" : "42", "Experience": "true", "Guardian Name(s)": "Jim and Jan Smith"],
 ["Name": "Jill Tanner", "Height" : "36", "Experience" : "true", "Guardian Name(s)" : "Clara Tanner"],
 ["Name": "Bill Bob", "Height" : "43", "Experience" : "true", "Guardian Name(s)" : "Sara and Jenny Bon"],
 ["Name": "Eva Gordon", "Height" : "45", "Experience" : "false", "Guardian Name(s)" : "Wendy and Mike Gordon"],
 ["Name": "Matt Gill", "Height" : "40", "Experience" : "false", "Guardian Name(s)" : "Charles and Silvia Gill"],
 ["Name": "Kimmy Stein", "Height" : "41", "Experience" : "false", "Guardian Name(s)" : "Bill and Hillary Stein"],
 ["Name": "Sammy Adams", "Height" : "45", "Experience" : "false", "Guardian Name(s)" : "Jeff Adams"],
 ["Name": "Karl Saygan", "Height" : "42", "Experience" : "true", "Guardian Name(s)" : "Heather Bedsoe"],
 ["Name": "Suzane Greenberg", "Height" : "44", "Experience" : "true", "Guardian Name(s)" : "Henrietta Dumas"],
 ["Name": "Sal Dali", "Height" : "41", "Experience" : "false", "Guardian Name(s)" : "Gala Dali"],
 ["Name": "Joe Kavalier", "Height" : "39", "Experience" : "false", "Guardian Name(s)" : "Sam and Elaine Kavalier"],
 ["Name": "Ben Finkelstein", "Height" : "44", "Experience" : "false", "Guardian Name(s)" : "Aaron and Jill Finkelstein"],
 ["Name": "Diego Soto", "Height" : "41", "Experience" : "true", "Guardian Name(s)" : "Robin and Sarika Soto"],
 ["Name": "Chloe Alaska", "Height" : "47", "Experience" : "false", "Guardian Name(s)" : "David and Jamie Alaska"],
 ["Name": "Arnold Willis", "Height" : "43", "Experience" : "false", "Guardian Name(s)" : "Claire Willis"],
 ["Name": " Phillip Helm", "Height" : "44", "Experience" : "true", "Guardian Name(s)" : "Thomas Helm and Eva Jones"],
 ["Name": "Les Clay", "Height" : "42", "Experience" : "true", "Guardian Name(s)" : "Wyonna Brown"],
 ["Name": "Herschel Krustofski", "Height" : "45", "Experience" : "true", "Guardian Name(s)" : "Hyman and Rachel Krstofski"]]


// Sort Players
var experiencedPlayers : [[String : String]] = []
var inexperiencedPlayers : [[String : String]] = []

func sortPlayersByExperience(arrayOfPlayers: [[String : String]]) {
    
    for player: [String : String] in allPlayersArray {
        if let experienceString : String = player["Experience"] {
            if (experienceString == "true") {
                experiencedPlayers.append(player)
            } else {
                inexperiencedPlayers.append(player)
            }
        } else {
            print("Experience unknown")
        }
    }
    
}

sortPlayersByExperience(allPlayersArray)

// Make teams
var dragons: [[String : String]] = []
var sharks : [[String : String]] = []
var raptors : [[String : String]] = []
var arrayOfTeams = [dragons, sharks, raptors]

func dividePlayersIntoTeams(arrayOfPlayers: [[String: String]]) {
    
    for i in 0 ..< arrayOfPlayers.count {
        if i % 3 == 0 {
            dragons.append(arrayOfPlayers[i])
        }
        
        if i % 3 == 1 {
            sharks.append(arrayOfPlayers[i])
        }
        
        if i % 3 == 2 {
            raptors.append(arrayOfPlayers[i])
        }
        
    }
}

dividePlayersIntoTeams(experiencedPlayers)
dividePlayersIntoTeams(inexperiencedPlayers)

func sendLetterToPlayers(teamOfPlayers: [[String : String]], teamName: String) {
    for player in teamOfPlayers {
        let name = player["Name"]!
        let guardianName = player["Guardian Name(s)"]!
        
        print("Dear \(guardianName),\n We would like to welcome your son/daughter, \(name), to the \(teamName).\n Our first practice will be on Wednesday, July 6th at 7:30 PM on the back field at Cale Elementary School.\n We are looking forward to meeting you and to a fantastic season!")
    }
}

sendLetterToPlayers(dragons, teamName: "Dragons")
sendLetterToPlayers(sharks, teamName: "Sharks")
sendLetterToPlayers(raptors, teamName: "Raptors")

