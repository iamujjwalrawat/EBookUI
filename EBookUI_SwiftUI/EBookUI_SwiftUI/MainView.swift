//
//  MainView.swift
//  EBookUI_SwiftUI
//
//  Created by Ujjwal Rawat on 26/07/22.
//

import SwiftUI

struct MainView: View {
    
    @State var currentTab: String = "Home"
    @State var showMenu: Bool = false
    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        ZStack{
            CustomTabView(currentTab: $currentTab, showMenu: $showMenu)
                .cornerRadius(showMenu ? 25 : 0)
                .rotation3DEffect(.degrees(0), axis: (x: 0.0, y: 1.0, z: 0.0))
                    .border(Color.gray)
                .offset(x: showMenu ? getRect().width / 2 : 0)
                .ignoresSafeArea()
        }
        .preferredColorScheme(.light)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
extension View {
    func getSafeArea()->UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return .zero
        }
        return safeArea
    }
}


