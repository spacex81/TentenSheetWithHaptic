//
//  AddView.swift
//  PracticeAnimation
//
//  Created by jo on 6/21/24.
//

import SwiftUI

struct AddView: View {
    @State private var showAddView = false

    var body: some View {
        Button {
            showAddView.toggle()
        } label: {
            HStack {
                Image(systemName: "plus")
                    .font(.largeTitle).bold()
                Text("add friends").font(.largeTitle).bold()
            }
        }
        .onChange(of: showAddView) { oldValue, newValue in
            // evoke haptic when 'showAddView' is true
            if newValue {
                let generator = UIImpactFeedbackGenerator(style: .medium)
                generator.impactOccurred()
            }
        }
        .sheet(isPresented: $showAddView) {
            PinView()
        }
    }
}

#Preview {
    AddView()
}
