//
//  BindingExample.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//

import SwiftUI

struct BindingExample: View {

    // @StateObject - обертка позволяющая следить за изменениями типа значения
    // При каждом изменении структура UInt удаляется, и образуется новая
    @State private var counter: UInt = 0

    var body: some View {
        VStack {
            Text("Stepper count: \(counter)").padding()
            NavigationLink("Stepper") {

                // @State биндится через знак $ где counter дочернего вью - @Binding
                BindingDetailView(counter: $counter)
            }
        }
    }
}
