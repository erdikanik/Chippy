//
//  ChipView.swift
//  Chippy
//
//  Created by Erdi on 19.07.2021.
//

import SwiftUI

struct ChipView: View {

    let columns = [
        GridItem(.adaptive(minimum: 100, maximum: 100)),
        GridItem(.adaptive(minimum: 100, maximum: 100)),
        GridItem(.adaptive(minimum: 100, maximum: 100)),
        GridItem(.adaptive(minimum: 100, maximum: 100)),
        GridItem(.adaptive(minimum: 100, maximum: 100))
      ]

    var body: some View {
        ScrollView {
            LazyHGrid(rows: columns) {
                SelectableChip()
                SelectableChip()
                SelectableChip()
            }
        }
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView()
    }
}
