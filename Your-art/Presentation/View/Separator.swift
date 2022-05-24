//
//  Separator.swift
//  Your-art
//
//  Created by Анастасия Василевская on 13.04.22.
//

import SwiftUI

struct Separator: View {
    var body: some View {
        Color(UIColor.black)
            .frame(width: nil, height: 0.5, alignment: .top)
    }
}

struct Separator_Previews: PreviewProvider {
    static var previews: some View {
        Separator()
    }
}
