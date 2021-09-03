//
//  ChipView.swift
//  Chippy
//
//  Created by Erdi on 19.07.2021.
//

import SwiftUI

struct ChipView: View {

    let columns = [
        GridItem(.adaptive(minimum: 150)),
      ]
    
    let model = ChippyModel(type: .selectable,
                            title: "Chip View",
                            color: .gray)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 10) {
                SelectableChip(chippyModel: model)
                SelectableChip(chippyModel: model)
                SelectableChip(chippyModel: model)
            }
        }
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView()
    }
}
