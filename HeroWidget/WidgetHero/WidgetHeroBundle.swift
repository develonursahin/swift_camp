//
//  WidgetHeroBundle.swift
//  WidgetHero
//
//  Created by Onur Şahin on 9.01.2025.
//

import WidgetKit
import SwiftUI

@main
struct WidgetHeroBundle: WidgetBundle {
    var body: some Widget {
        WidgetHero()
        WidgetHeroControl()
        WidgetHeroLiveActivity()
    }
}
