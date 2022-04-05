//
//  EnvironmentDetailView.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//

import SwiftUI

struct EnvironmentDetailView: View {

    var body: some View {
        VStack {
            Text("Stepper Example")
            EnvironmenStepper()
        }
    }
}

// MARK: - Private

private struct EnvironmenStepper: View {

    // @EnvironmentObject - позволяет взаимодействовать со ссылкой counter родителя
    // (можно применять для больших объектов)
    // @EnvironmentObject - аналог @ObservedObject, но он не нуждается в передаче значения по цепочке, работает внутри иерархии
    @EnvironmentObject var counter: Counter

    // https://developer.apple.com/documentation/swiftui/environmentkey
    // Работает как @EnvironmentObject,
//    @Environment(\.myCustomValue) var customValue: String

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
