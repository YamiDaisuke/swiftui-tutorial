//
//  PageView.swift
//  landmarks
//
//  Created by Franklin Cruz on 11/11/19.
//  Copyright © 2019 S.Y.Soft. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 1

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: self.$currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
            .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
    }
}
