//
//  SelectableChip.swift
//  Chippy
//
//  Created by Erdi on 19.07.2021.
//

import SwiftUI

struct SelectableChip: View {

    @State var doneButtonVisibile = false

    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
            HStack {
                if doneButtonVisibile {
                    Image("done").resizable().renderingMode(.template).foregroundColor(.green).frame(width: 16, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).imageScale(.small)
                }
                Text("Price low to High").font(.system(size: 12))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }.padding(.all, 7)
        }).onTapGesture {
            doneButtonVisibile = !doneButtonVisibile
        }.animation(.easeIn(duration: 0.2))
        .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: false)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .contentShape(Ellipse())
    }
}

struct SelectableChip_Previews: PreviewProvider {
    static var previews: some View {
        SelectableChip()
    }
}
