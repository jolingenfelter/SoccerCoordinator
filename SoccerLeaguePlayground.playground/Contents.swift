import UIKit

let allPlayersArray: [[String : String]] =
[["Name" : "Joe Smith", "Height" : "42", "Experience": "true", "Guardian Name(s)": "Jim and Jan Smith"],
 ["Name": "Jill Tanner", "Height" : "36", "Experience" : "true", "Guardian Name(s)" : "Clara Tanner"],
 ["Name": "Bill Bob", "Height" : "43", "Experience" : "true", "Guardian Name(s)" : "Sara and Jenny Bon"],
 ["Name": "Eva Gordon", "Height" : "45", "Experience" : "false", "Guardian Name(s)" : "Wendy and Mike Gordon"],
 ["Name": "Matt Gill", "Height" : "40", "Experience" : "false", "Guardian Name(s)" : "Charles and SIlvia Gill"],
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


var experiencedPlayers : [[String : String]] = []
var inexperiencedPlayers : [[String : String]] = []
var hasExperience: Bool

func sortPlayers(arrayOfPlayers: [[String : String]]) {
    
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

sortPlayers(allPlayersArray)

var dragons: [[String : String]]
var sharks : [[String : String]]
var raptors : [[String : String]]