//
//  MountainCardView.swift
//  TravelAppUI
//
//  Created by Cem Bıçakcı on 16.08.2025.
//

import SwiftUI

struct MountainCardView: View {
    let mountaion: Destination
    
    var body: some View {
        mountaion.image
            .overlay(alignment: .bottom) {
                HStack {
                    VStack(alignment: .leading, content: {
                        Text(mountaion.title)
                            .font(.system(size: 12, weight: .bold))
                        HStack {
                            Image.location
                                .frame(width: 10, height: 10)
                            Text(mountaion.location)
                                .font(.system(size: 10, weight: .medium))
                        }
                    })
                    Spacer()
                    VStack(alignment: .leading, content: {
                        Text(mountaion.amount)
                            .font(.system(size: 12, weight: .bold))
                        Text("/Person")
                            .font(.system(size: 10, weight: .medium))
                    })
                }
                .foregroundColor(.white)
                .padding(5)
                .frame(maxWidth: .infinity)
                .background(Color.appGrayColor.opacity(0.2))
            }
    }
}

#Preview {
    MountainCardView(mountaion: MockDataService.instance.getMountains()[0])
}
