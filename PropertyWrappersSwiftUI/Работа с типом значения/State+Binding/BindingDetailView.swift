//
//  BindingDetailView.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//

import SwiftUI

struct BindingDetailView: View {

    // @Binding позволяет пересоздать свойство counter у родителя
    // (применять для маленьких объектов чтоб не нагружать память)
    @Binding var counter: UInt

    var body: some View {
        VStack {
            Text("Stepper Example")
            Stepper(counter: $counter)
        }
    }
}

// MARK: - Private

private struct Stepper: View {

    @Binding var counter: UInt

    var body: some View {
        HStack {
            Button {
                guard counter > .zero else { return }
                counter -= 1
            } label: {
                getButtonStyle(with: "-")
            }
            Text("\(counter)")
            Button {
                counter += 1
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
