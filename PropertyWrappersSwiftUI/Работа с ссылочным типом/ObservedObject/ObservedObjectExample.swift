//
//  ObservedObjectExample.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//

import SwiftUI

struct ObservedObjectExample: View {

    // @StateObject - обертка позволяющая следить за изменениями в ссылочных типах
    // При каждом изменении class не перетирается как @State, а лишь обновляются значения внитри него
    @StateObject var counter: Counter

    var body: some View {
        VStack {
            Text("Stepper count: \(counter.count)").padding()
            NavigationLink("Stepper") {

                // @StateObject биндится через конструктор где counter дочернего вью - @ObservedObject
                ObservedObjectDetailView(counter: counter)
            }
        }
    }

}

