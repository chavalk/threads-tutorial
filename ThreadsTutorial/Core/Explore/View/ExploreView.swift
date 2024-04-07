//
//  ExploreView.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/6/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { user in
                        VStack {
                            HStack {
                                Image("max-verstappen")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack {
                                    Text("maxverstappen1")
                                        .fontWeight(.semibold)
                                    
                                    Text("Max Verstappen")
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                                Text("Follow")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                            }
                            .padding(.horizontal)
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
