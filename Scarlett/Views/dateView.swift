//
//  dateView.swift
//  Scarlett
//
//  Created by Justin Damhaut on 6/4/24.
//

import SwiftUI

struct dateView: View {
    @State var dateNow = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var mainDateFormatter: DateFormatter {
        let datefmtr = DateFormatter()
        datefmtr.dateFormat = "EE dd"
        return datefmtr
    }
            
    var body: some View {
        Text(dateNow)
            .font(.system(size: 75, design: .monospaced))
            .lineLimit(1)
            .bold()
        .onReceive(timer) { _ in
        self.dateNow = mainDateFormatter.string(from: Date())
        }
    }
}

#Preview {
    dateView()
}
