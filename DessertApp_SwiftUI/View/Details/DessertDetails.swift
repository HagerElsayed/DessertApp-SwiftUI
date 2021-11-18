//
//  DessertDetails.swift
//  DessertApp_SwiftUI
//
//  Created by Hager Elsayed on 14/11/2021.
//

import SwiftUI

struct DessertDetails: View {
    @Environment(\.presentationMode) var presentationMode
    @State var dessert: Dessert = dessertData[2] // as default value to test design
    var body: some View {
        VStack(alignment: .leading) {
            Header(image: dessert.image)
            VStack(alignment: .leading){
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text(dessert.name)
                            .foregroundColor(.primaryColor)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        HStack {
                            Text(dessert.price)
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            AmountView()
                        }
                        .padding(.horizontal)
                        
                        HStack(spacing: 10) {
                            SubInfoView(image: "gym", info: "100 Calories")
                            SubInfoView(image: "delivery", info: "Free Delivery")
                            SubInfoView(image: "time", info: "20-30 min")
                        }
                        .padding(.top, 20)
                        .padding()
                        
                        Text("Description: ")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        
                        Text(dessert.description)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                            .padding()
                        
                    }
                    
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Add to Cart")
                    .foregroundColor(.white)
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width / 1.1)
            .background(Color.primaryColor)
            .cornerRadius(35)
            .padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .statusBar(hidden: true)
        .navigationBarItems(
            leading:
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.black.opacity(0.5))
                }
                ,
            trailing:
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "heart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.black.opacity(0.5))
                }
                
            )
    }
}

struct SubInfoView: View {
    var image: String
    var info: String
    var body: some View {
        HStack(spacing: 8) {
            Image(image)
            Text(info)
        }
    }
}
struct AmountView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("-")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .frame(width: 35, height: 35)
                    .background(Circle().stroke().foregroundColor(Color.borderColor))
            }
            
            Text("1")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("+")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .frame(width: 35, height: 35)
                    .background(Circle().stroke().foregroundColor(Color.borderColor))
            }
            
        }
    }
}

struct Header: View {
    var image: String
    var body: some View {
        ZStack(alignment: .top) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                .cornerRadius(55, corners: [.bottomLeft, .bottomRight])
        }
    }
}

// MARK: - Extend view to apply cornerRadius
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct DessertDetails_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetails()
    }
}
