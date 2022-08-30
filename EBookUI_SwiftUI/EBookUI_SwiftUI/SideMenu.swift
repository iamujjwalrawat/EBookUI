//
//  SideMenu.swift
//  EBookUI_SwiftUI
//
//  Created by Ujjwal Rawat on 26/07/22.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var currentTab: String
    @Namespace var animation
    var offset : CGSize
    var body: some View {
        VStack{
            HStack(spacing: 15) {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                Text("Ujjwal")
                    .font(.title2.bold())
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false, content:{
                VStack(alignment: .leading, spacing: 25) {
                    CustomTabButton(icon: "house", title: "Home")
                    CustomTabButton(icon: "person", title: "Profile")
                    CustomTabButton(icon: "list.bullet.rectangle", title: "History")
                    CustomTabButton(icon: "square.and.pencil", title: "Author")
                    CustomTabButton(icon: "bell", title: "Notifications")
                    CustomTabButton(icon: "slider.vertical.3", title: "Settings")
                    CustomTabButton(icon: "headphones", title: "Customer Support")
                        .padding(.bottom, 45)
                    CustomTabButton(icon: "rectangle.potrait.and.arrow.right", title: "Logout")
                } .padding()
                    .padding(.top,45)
            })
            .frame(width: getRect().width / 2, alignment: .leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.leading , 10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("Blue"))
    }
    @ViewBuilder
    func CustomTabButton(icon: String, title: String)-> some View{
        Button {
            if title == "Logout" {
                print("logout")
            } else {
                withAnimation {
                    currentTab = title
                }
            }
        } label: {
            HStack(spacing: 12) {
                Image(systemName: icon)
                    .font(.title3)
                    .frame(width: currentTab == title ? 38 : nil, height: 38)
                    .foregroundColor(currentTab == title ? Color("Blue"):(title == "Logout" ? Color.white: .white))
                    .background(ZStack {
                        if currentTab == title {
                            Color.white
                                .clipShape(Circle())
                                .matchedGeometryEffect(id: "TABCIRCLE", in: animation)
                        }
                    }
                    )
                Text(title)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(title == "Logout" ? Color.white: .white)
            }
            .padding(.trailing, 18)
            .background(ZStack {
                if currentTab == title {
                    Color("Orange")
                        .clipShape(Capsule())
                        matchedGeometryEffect(id: "TABCAPSULE", in: animation)
                }
            }
                )
     
            }
     
        }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension View {
    func getRect()->CGRect {
        return UIScreen.main.bounds
    }
}
