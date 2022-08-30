//
//  CustomTabView.swift
//  EBookUI_SwiftUI
//
//  Created by Ujjwal Rawat on 26/07/22.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab: String
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {withAnimation(.spring()){
                    showMenu = true
                }
                }, label: {
                    Image(systemName: "text.alignleft")
                        .font(.title2)
                        .foregroundColor(.black)
                })
                .opacity(showMenu ? 0 : 1)
                Spacer()
            }
            .overlay(
            Text(currentTab)
                .font(.title2.bold())
                .foregroundColor(.white)
                .opacity(showMenu ? 0 : 1)
        )
            .padding([.horizontal, .top])
            .padding(.bottom, 8)
            .padding(.top, getSafeArea().top)
            
            TabView(selection: $currentTab, content: {
                HomeView()
                    .tag("Home")
                Text("Profile")
                    .tag("Profile")
                    Text("History")
                        .tag("History")
                    Text("Author")
                        .tag("Author")
                         Text("Notifications")
                             .tag("Notifications")
                         Text("Settings")
                             .tag("Settings")
 })
}
                .disabled(showMenu)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                    Button(action: { withAnimation(.spring()){
                     showMenu = false
                    }
                    }, label: {Image(systemName: "xmark")
                            .font(.title2)
                            .foregroundColor(.black)
                    })
                    .opacity(showMenu ? 1:0)
                    .padding()
                    .padding(.top)
                    ,alignment:.topLeading
                    )
                        .background(Color("BG"))
 }
    
struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
