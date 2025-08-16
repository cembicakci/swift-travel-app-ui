//
//  HomeView.swift
//  TravelAppUI
//
//  Created by Cem Bıçakcı on 16.08.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView
            CategoryRow
                .padding(.top, 10)
          
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(MockDataService.instance.getCategories(), id: \.name) { category in
                        CategoryCardView(category: category)
                    }
                }
            }
            .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(MockDataService.instance.getMountains(), id: \.title) { mountaion in
                        MountainCardView(mountaion: mountaion)
                    }
                }
            }
            .padding(.top, 5)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

private extension HomeView {
    var HeaderView: some View {
        HStack {
            Image.menu
                .padding()
                .frame(width: 36, height: 36)
                .background(Color.appGrayColor)
            
            Spacer()
            
            VStack {
                Text("Current Location")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.gray)
                HStack {
                    Image.location
                        .frame(width: 14, height: 14)
                    Text("Despasar, Bali")
                        .font(.system(size: 14, weight: .semibold))
                    
                }
            }
            
            Spacer()
            
            Image.user
                .frame(width: 36, height: 36)
        }
    }
    
    var CategoryRow: some View {
        HStack {
            Text("Category")
                .font(.system(size: 18, weight: .bold))
            Spacer()
            Text("View All")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.appBlueColor)
            Image.right_arrow
                .foregroundColor(.appBlueColor)
        }
    }
}
