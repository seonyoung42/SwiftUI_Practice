//
//  ContentView.swift
//  WordScramble
//
//  Created by 장선영 on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }
            
            ForEach(people, id:\.self) {
                Text($0)
            }
            
            Text("Static row")
        }
    }
    
    func getWord() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        let letter = letters.randomElement()
        let trimmedLetter = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func getMisspelled() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word,
                                                            range: range,
                                                            startingAt: 0,
                                                            wrap: false,
                                                            language: "en")
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
