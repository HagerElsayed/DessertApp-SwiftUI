//
//  DessertItemView.swift
//  DessertApp_SwiftUI
//
//  Created by Hager Elsayed on 14/11/2021.
//

import SwiftUI

struct DessertItemView: View {
    var item: Dessert
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(.white)
                .frame(width: UIScreen.main.bounds.width / 1.3)
                .cornerRadius(25)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            
            HStack(alignment: .center) {
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(x: -20)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(item.name)
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.primaryColor)
                        .padding(.trailing, 20)
                    Text(item.type)
                        .font(.caption2)
                        .foregroundColor(.gray)
                    Text(item.price)
                        .font(.caption2)
                        .foregroundColor(.black1)
                }
                .padding(.vertical, 30)
            }
            .padding(.horizontal, 20)
        }
    }
}
