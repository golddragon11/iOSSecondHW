import Foundation
import SwiftUI

struct players {
    var id = UUID()
    let name: String
    let number: Int
    let birthday: String
    let weight: Int
    let height: String
    let years_pro: Int
    let position: String
}

let Lakers_Players = [
    players(name: "LeBron James", number: 23, birthday: "12/30/1984", weight: 250, height: "6'9", years_pro: 17, position: "Forward"),
    players(name: "Anthony Davis", number: 3, birthday: "03/11/1993", weight: 253, height: "6'10", years_pro: 8, position: "Forward-Center"),
    players(name: "Rajon Rondo", number: 9, birthday: "02/22/1986", weight: 180, height: "6'1", years_pro: 14, position: "Guard"),
    players(name: "Kentavious Caldwell-Pope", number: 1, birthday: "02/18/1993", weight: 204, height: "6'5", years_pro: 7, position: "Guard"),
    players(name: "Alex Caruso", number: 4, birthday: "02/28/1994", weight: 186, height: "6'5", years_pro: 3, position: "Guard"),
    players(name: "Danny Green", number: 14, birthday: "06/22/1987", weight: 215, height: "6'6", years_pro: 11, position: "Guard"),
    players(name: "Dwight Howard", number: 39, birthday: "12/08/1985", weight: 265, height: "6'10", years_pro: 16, position: "Center-Forward"),
    players(name: "Javale Mcgee", number: 7, birthday: "01/19/1988", weight: 270, height: "7'0", years_pro: 12, position: "Center-Forward"),
    players(name: "Kyle Kuzma", number: 0, birthday: "07/24/1995", weight: 221, height: "6'8", years_pro: 3, position: "Forward"),
    players(name: "Markieff Morris", number: 88, birthday: "09/02/1989", weight: 245, height: "6'8", years_pro: 9, position: "Forward"),
    players(name: "Avery Bradley", number: 11, birthday: "11/26/1990", weight: 180, height: "6'3", years_pro: 10, position: "Guard"),
    players(name: "Jared Dudley", number: 10, birthday: "07/10/1985", weight: 237, height: "6'6", years_pro: 13, position: "Forward"),
    players(name: "Quinn Cook", number: 28, birthday: "03/23/1993", weight: 180, height: "6'1", years_pro: 4, position: "Guard"),
    players(name: "Dion Waiters", number: 18, birthday: "12/10/1991", weight: 210, height: "6'3", years_pro: 8, position: "Guard"),
    players(name: "JR Smith", number: 21, birthday: "09/09/1985", weight: 220, height: "6'6", years_pro: 16, position: "Guard"),
    players(name: "Talen Horton-Tucker", number: 5, birthday: "11/25/2000", weight: 234, height: "6'4", years_pro: 1, position: "Guard"),
    players(name: "Kostas Antetokounmpo", number: 37, birthday: "11/20/1997", weight: 200, height: "6'10", years_pro: 2, position: "Forward"),
    players(name: "Devontae Cacock", number: 12, birthday: "10/08/1995", weight: 240, height: "6'8", years_pro: 1, position: "Forward")
]

let Heat_Players = [
    players(name: "Jimmy Butler", number: 22, birthday: "09/14/1989", weight: 230, height: "6'7", years_pro: 9, position: "Forward"),
    players(name: "Bam Adebayo", number: 13, birthday: "07/18/1997", weight: 255, height: "6'9", years_pro: 3, position: "Center-Forward"),
    players(name: "Goran Dragic", number: 7, birthday: "05/06/1986", weight: 190, height: "6'3", years_pro: 12, position: "Guard"),
    players(name: "Tyler Herro", number: 14, birthday: "01/20/2000", weight: 195, height: "6'5", years_pro: 1, position: "Guard"),
    players(name: "Duncan Robinson", number: 55, birthday: "04/22/1994", weight: 215, height: "6'5", years_pro: 2, position: "Forward"),
    players(name: "Andre Iguodala", number: 28, birthday: "01/28/1984", weight: 215, height: "6'6", years_pro: 16, position: "Guard-Forward"),
    players(name: "Jae Crowder", number: 99, birthday: "07/06/1990", weight: 235, height: "6'6", years_pro: 8, position: "Forward"),
    players(name: "Udonis Haslem", number: 40, birthday: "06/09/1980", weight: 235, height: "6'8", years_pro: 17, position: "Forward"),
    players(name: "Kendrick Nunn", number: 25, birthday: "08/03/1995", weight: 190, height: "6'2", years_pro: 1, position: "Guard"),
    players(name: "Kelly Olynyk", number: 9, birthday: "04/19/1991", weight: 240, height: "6'11", years_pro: 7, position: "Forward-Center"),
    players(name: "Meyers Leonard", number: 0, birthday: "02/27/1992", weight: 260, height: "7'0", years_pro: 8, position: "Forward-Center"),
    players(name: "Solomon Hill", number: 44, birthday: "03/18/1991", weight: 226, height: "6'6", years_pro: 7, position: "Forward"),
    players(name: "Derrick Jones Jr", number: 5, birthday: "02/15/1997", weight: 210, height: "6'6", years_pro: 4, position: "Forward"),
    players(name: "Chris Silva", number: 30, birthday: "09/19/1996", weight: 234, height: "6'8", years_pro: 1, position: "Forward"),
    players(name: "Gabe Vincent", number: 2, birthday: "06/14/1996", weight: 200, height: "6'3", years_pro: 1, position: "Guard"),
    players(name: "KZ Okpala", number: 4, birthday: "04/28/1999", weight: 215, height: "6'8", years_pro: 1, position: "Forward-Guard"),
    players(name: "Kyle Alexander", number: 17, birthday: "10/21/1996", weight: 216, height: "6'10", years_pro: 1, position: "Forward-Center")
]
