//
//  CategoryCardView.swift
//  TravelAppUI
//
//  Created by Cem Bıçakcı on 16.08.2025.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    
    var body: some View {
        HStack {
            category.image
                .frame(width: 18, height: 20)
            
            Text(category.name)
                .font(.system(size: 12, weight: .medium))
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.appGrayColor)
    }
}

#Preview {
    CategoryCardView(category: MockDataService.instance.getCategories()[0])
}
