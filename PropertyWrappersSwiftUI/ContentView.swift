//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by porohov on 26.03.2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Property wrappers \nSwiftUI example").multilineTextAlignment(.center).padding()
                NavigationLink(destination: BindingExample()) {
                    Text("BindingExample")
                }
                NavigationLink(destination: ObservedObjectExample(counter: .init())) {
                    Text("ObservedObjectExample")
                }
                NavigationLink(destination: EnvironmentObjectExample(counter: .init())) {
                    Text("EnvironmentObjectExample")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
