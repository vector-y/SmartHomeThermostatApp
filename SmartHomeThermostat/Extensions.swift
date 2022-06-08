//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Victor Tran on 6/6/22.
//

import SwiftUI

extension LinearGradient{
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing){
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
