//
//  AlarmModel.swift
//  Scarlett
//
//  Created by Justin Damhaut on 7/4/24.
//

import Foundation
import SwiftUI

struct alarmStorage: Identifiable {
    var id = UUID()
    var title: String
    var sleepStartTime: String
    var sleepEndTime: String
    var daysActivated: String
    var masterActivation: Bool
}
