//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Blair Duddy on 2023-04-13.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
    
}
