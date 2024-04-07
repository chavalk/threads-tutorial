//
//  FeedView.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/6/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
