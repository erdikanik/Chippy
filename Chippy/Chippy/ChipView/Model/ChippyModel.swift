//
//  ChippyModel.swift
//  Chippy
//
//  Created by erdikanik on 29.08.2021.
//

import SwiftUI

final class ChippyModel {
    
    enum ModelType {
        
        case selectable
    }
    
    let type: ModelType
    let title: String
    let color: Color
    
    var tintColor: Color = .green
    var textColor: Color = .white
    var textSize: CGFloat = 12.0
    
    init(type: ModelType, title: String, color: Color) {
        
        self.type = type
        self.title = title
        self.color = color
    }
}
