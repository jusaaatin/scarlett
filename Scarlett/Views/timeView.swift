//
//  timeView.swift
//  Scarlett
//
//  Created by Justin Damhaut on 6/4/24.
//

import SwiftUI

struct timeView: View {
    @State var timeNow = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var mainTimeFormatter: DateFormatter {
        let timefmtr = DateFormatter()
        timefmtr.dateFormat = "hh:mm"
        return timefmtr
    }
    var mainAMPMFormatter: DateFormatter {
        let ampmfmtr = DateFormatter()
        ampmfmtr.dateFormat = "a"
        return ampmfmtr
    }
    var body: some View {
        Text(timeNow)
            .font(.system(size: 380, design: .none))
            .lineLimit(1)
        .onReceive(timer) { _ in
        self.timeNow = mainTimeFormatter.string(from: Date())
        }
    }
}


#Preview {
    timeView()
}
