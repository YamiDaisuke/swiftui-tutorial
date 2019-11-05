//
//  List.swift
//  landmarks
//
//  Created by Franklin Cruz on 4/11/19.
//  Copyright © 2019 S.Y.Soft. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .padding()
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
