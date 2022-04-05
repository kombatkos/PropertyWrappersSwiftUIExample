//
//  Counter.swift
//  TestSwiftUI
//
//  Created by porohov on 05.04.2022.
//
import SwiftUI

class Counter: ObservableObject {
    // @Published - без этой обертки UI обновляться не будет при изменении этого свойства
    @Published var count: UInt = 0
}
