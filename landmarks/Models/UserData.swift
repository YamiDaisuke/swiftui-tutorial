//
//  UserData.swift
//  landmarks
//
//  Created by Franklin Cruz on 5/11/19.
//  Copyright © 2019 S.Y.Soft. All rights reserved.
//

import UIKit
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
