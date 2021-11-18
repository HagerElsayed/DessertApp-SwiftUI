//
//  ContentView.swift
//  DessertApp_SwiftUI
//
//  Created by Hager Elsayed on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var selectedItem = dessertData[0]
    var body: some View {
        NavigationView {
            ZStack {
                Color.mainBGColor
                VStack {
                    DessertHomeTopBar()
                    SearchBarView()
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(dessertData, id: \.self) { item in
                                Button(action: {
                                    showDetails = true
                                    selectedItem = item
                                }) {
                                    DessertItemView(item: item)
                                }
                            }
                            .background(
                            NavigationLink(
                                destination:
                                    DessertDetails(dessert: selectedItem)
                                    .navigationBarBackButtonHidden(true)
                                ,
                                isActive: $showDetails) { EmptyView() }
                            )
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
