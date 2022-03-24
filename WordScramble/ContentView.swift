//
//  ContentView.swift
//  WordScramble
//
//  Created by Ross Phillips on 3/24/22.
//

import SwiftUI

struct ContentView: View {
	let people = ["Finn", "Leia", "Luke", "Rey"]

	var body: some View {
		Text("Hello World")
			.padding()

	}
	
	func test(){
		let word = "swift"
		let checker = UITextChecker()
		
		let range = NSRange(location: 0, length: word.utf16.count)
		
		let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
		
		let allGood = misspelledRange.location == NSNotFound
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
