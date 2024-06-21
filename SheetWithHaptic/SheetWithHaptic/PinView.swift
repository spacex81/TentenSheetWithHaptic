//
//  PinView.swift
//  PracticeAnimation
//
//  Created by jo on 6/21/24.
//

import SwiftUI

struct PinView: View {
    @State private var pin: String = ""
    
    var body: some View {
        Text("Pin View").font(.largeTitle).bold()
    }
}

#Preview {
    PinView()
}
