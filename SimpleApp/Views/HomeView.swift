//
//  HomeViews.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/16/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var manager: Manager
    var body: some View {
        NavigationView{
            ZStack{
                Color("White").ignoresSafeArea()
                ScrollView{
                    ForEach(manager.sampleNews, id:\.self) { data in
                        Card(bigTitle: data.title, smTitle: data.secTitle, smallDecs: data.smalDisc, imgURL: data.imgURL, aboutNews: data.aboutNews)
                            .padding(.vertical, 20)
                    }
                }
            }
            .navigationTitle(Text("Home").foregroundColor(Color("DarkSilver")))
            .toolbar{
                NavigationLink(destination: ProfileView()) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .foregroundColor(Color("DarkSilver"))
                        .frame(width: 40, height: 40)
                        .padding(.top, 80)
                        
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(manager: Manager())
    }
}
