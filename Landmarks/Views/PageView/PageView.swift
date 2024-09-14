//
//  PageView.swift
//  Landmarks
//
//  Created by Jayant D Patil on 11/09/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
//            HStack {
//                Button("Backward") {
//                    currentPage = (1 - currentPage) % pages.count
//                }
//                Spacer()
//                Button("Forward") {
//                    currentPage = (1 + currentPage) % pages.count
//                }
//            }
            
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3/2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
