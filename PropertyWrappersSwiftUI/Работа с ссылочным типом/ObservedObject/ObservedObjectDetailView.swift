//
//  ObservedObjectDetailView.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//

import SwiftUI

struct ObservedObjectDetailView: View {

    // @EnvironmentObject - позволяет взаимодействовать со ссылкой counter родителя
    // (можно применять для больших объектов)
    @ObservedObject var counter: Counter

    var body: some View {
        VStack {
            Text("Stepper Example")
            ObservedObjectStepper(counter: counter)
        }
    }
}

// MARK: - Private

private struct ObservedObjectStepper: View {

    @ObservedObject var counter: Counter

    var body: some View {
        HStack {
            Button {
                guard counter.count > .zero else { return }
                counter.count -= 1
            } label: {
                getButtonStyle(with: "-")
            }
            Text("\(counter.count)")
            Button {
                counter.count += 1
            } label: {
                getButtonStyle(with: "+")
            }

        }
    }

    func getButtonStyle(with text: String) -> some View {
        Text(text)
            .frame(width: 40, height: 40)
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
    }

}
