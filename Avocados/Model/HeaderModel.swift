//
//  HeaderModel.swift
//  Avocados
//
//  Created by David Onuche on 25/09/2026.
//

import SwiftUI


// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
