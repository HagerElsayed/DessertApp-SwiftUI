//
//  DessertHomeTopBar.swift
//  DessertApp_SwiftUI
//
//  Created by Hager Elsayed on 14/11/2021.
//

import SwiftUI

struct DessertHomeTopBar: View {
    var height = UIScreen.main.bounds.height
    var body: some View {
        HStack {
            Text("Home")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(alignment: .center)
                .navigationBarItems(
                leading:
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("menu")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                    }
                )
        }
        .foregroundColor(Color.black1)
        .padding()
        .padding(.top, height < 750 ? 0 : 50)
    }
}
