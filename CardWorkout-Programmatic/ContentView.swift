//
//  ContentView.swift
//  CardWorkout-Programmatic
//
//  Created by Nam Nguyen on 07/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainStoryBoardView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainStoryBoardView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = CardSelectionVC()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
