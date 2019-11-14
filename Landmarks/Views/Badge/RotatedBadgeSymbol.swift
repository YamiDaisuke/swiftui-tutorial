//
//  RotatedBadgeSymbol.swift
//  landmarks
//
//  Created by Franklin Cruz on 8/11/19.
//  Copyright © 2019 S.Y.Soft. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {

    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 30))
    }
}
