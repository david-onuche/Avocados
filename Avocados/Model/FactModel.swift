//
//  FactModel.swift
//  Avocados
//
//  Created by David Onuche on 25/09/2026.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
