//
//  HomeView.swift
//  EBookUI_SwiftUI
//
//  Created by Ujjwal Rawat on 26/07/22.
//

import SwiftUI
struct HomeView: View {
    var body: some View {
        VStack() {
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray.opacity(0.1))
                .frame(width: 350, height: 50)
                .overlay(HStack(spacing: 15){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 15, height: 15, alignment: .leading)
                        .padding(.leading, 15)
                    Text("Search")
                        .font(.caption)
                        .foregroundColor(.black)
                        .padding(.trailing, 120)
                    Spacer()
                })
                .padding(.top,60)
                .padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 20) {
                VStack() {
                    Text("Trending Books")
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .foregroundColor(.black)
                        .padding(.trailing, 190)
                        .padding(.bottom, 10)
                         HStack() {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                Group() {
                                    VStack() { Image("Book1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 160, height: 200)
                                        .padding(.leading, 15)
                                        Text("The Thursday Murder Club")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                }
                                Group() {
                                    VStack() {
                                        Image("Book2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 160, height: 200)
                                            .padding(.leading, 15)
                                        Text("The Love Hypothesis")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    
                                }
                            }
                                Group() {
                                    VStack() {
                                        Image("Book3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 160, height: 200)
                                            .padding(.leading, 15)
                                        Text("The Midnight Library")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                    
                                }
                        }
                                Group() {
                                    VStack() {
                                        Image("Book4")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 160, height: 200)
                                            .padding(.leading, 15)
                                        Text("ShuggieBain")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    
                                }
                    }
                                Group() {
                                    VStack() {
                                        Image("Book5")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 160, height: 200)
                                            .padding(.leading, 15)
                                        Text("The Love Hypothesis")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    
                                }
                }
                                Group() {
                                        VStack() {
                                            Image("Book6")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 160, height: 200)
                                                .padding(.leading, 15)
                                            Text("The Road Trip")
                                                .font(.caption)
                                                .foregroundColor(.gray)
 }
            }
        }
    }
}
                         .padding(.bottom, 20)
                }
            }
            VStack(alignment: .leading, spacing: 20) {
                ZStack() {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("Blue"))
                        .frame(width: 390, height: 420)
                        .overlay(VStack() {
                            Text("Continue Reading")
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding(.trailing, 190)
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            HStack(){
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing:10) {
                                        Group() {
                                            VStack() {
                                                Image("Book7")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 160, height: 200)
                                                    .padding(.leading, 15)
                                                      Text("The Sanatorium")
                                                    .font(.caption)
                                                    .foregroundColor(.white)
                                            }
                                    }
                                        Group() {
                                                          VStack() {
                                                              Image("Book8")
                                                                  .resizable()
                                                                  .aspectRatio(contentMode: .fit)
                                                                  .frame(width: 160, height: 200)
                                                                  .padding(.leading, 15)
                                                                    Text("Where the Crawdads Sing")
                                                                  .font(.caption)
                                                                  .foregroundColor(.white)
                                                          }
                                                  }
                                                                    Group() {
                                                                         VStack() {
                                                                             Image("Book9")
                                                                                 .resizable()
                                                                                 .aspectRatio(contentMode: .fit)
                                                                                 .frame(width: 160, height: 200)
                                                                                 .padding(.leading, 15)
                                                                                   Text("Better Off Dead")
                                                                                 .font(.caption)
                                                                                 .foregroundColor(.white)
                                                                         }
                                                                 }
                                                                                   Group() {
                                                                                        VStack() {
                                                                                            Image("Book10")
                                                                                                .resizable()
                                                                                                .aspectRatio(contentMode: .fit)
                                                                                                .frame(width: 160, height: 200)
                                                                                                .padding(.leading, 15)
                                                                                                  Text("The Couple At No 9")
                                                                                                .font(.caption)
                                                                                                .foregroundColor(.white)
                                                                                        }
                                                                                }
                                                                                                  Group() {
                                                                                                       VStack() {
                                                                                                           Image("Book11")
                                                                                                               .resizable()
                                                                                                               .aspectRatio(contentMode: .fit)
                                                                                                               .frame(width: 160, height: 200)
                                                                                                               .padding(.leading, 15)
                                                                                                                 Text("Still Life")
                                                                                                               .font(.caption)
                                                                                                               .foregroundColor(.white)
                                                                                                       }
                                                                                               }
                                                                                                                 Group() {
                                                                                                                      VStack() {
                                                                                                                          Image("Book12")
                                                                                                                              .resizable()
                                                                                                                              .aspectRatio(contentMode: .fit)
                                                                                                                              .frame(width: 160, height: 200)
                                                                                                                              .padding(.leading, 15)
                                                                                                                                Text("The Khan")
                                                                                                                              .font(.caption)
                                                                                                                              .foregroundColor(.white)
                                                                                                                      }
                                                                                                              }
                        }
                }
            }
                                                                                                                              .padding(.bottom,20)
                                                                                                                                })
                                                                                                                                }
                                                                                                                                }
                                                                                                                                }
                                                                                                                                }
                                                                                                                                }
                                                                                                                 
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
                    
                                                                                                                 
