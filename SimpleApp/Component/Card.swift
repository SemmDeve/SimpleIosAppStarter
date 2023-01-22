//
//  Card.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/16/23.
//

import SwiftUI

struct Card: View {
    
    let screen = ScreenCal()
    
    @State var bigTitle: String = "The Circle"
    @State var smTitle: String = "Of Fifths"
    @State var smallDecs: String = "find the beauty"
    @State var imgURL: String = "https://i.pinimg.com/736x/20/fb/05/20fb05d151129c1dc4fabdd97c5fd824.jpg"
    @State var aboutNews: String = ""
    @State var data: Data?
    
    func fatchImg(urlString:String){
        guard let url = URL(string: urlString) else {
            print("ERROR: failed to get URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            if error == nil{
                self.data = data
            } else {
                print("ERROR: getting the data")
            }
        }.resume()
    }
    
    
    var body: some View {
        NavigationLink(destination: CardView(title: "\(bigTitle + smTitle)", smalDec: "\(smallDecs)", imgURL: "\(imgURL)", aboutNews: "\(aboutNews)")) {
            ZStack{
                if let data = data,let uiimage = UIImage(data: data){
                    Image(uiImage: uiimage)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        
                } else{
                    Image("")
                        .resizable()
                        .scaledToFill()
                        .background(.red)
                        .clipped()
                        .onAppear{
                            fatchImg(urlString: imgURL)
                        }
                }
                Rectangle()
                    .blur(radius: 35)
                    .offset(x: 0, y: 190)
                    .opacity(0.78)
                    .foregroundColor(.black)
                    
                VStack {
                    HStack{
                        VStack(alignment: .leading) {
                            Text("\(bigTitle)")
                                .font(.system(size: 36, design: .monospaced))
                            Text("\(smTitle)")
                                .font(.system(size: 24, design: .monospaced))
                                .offset(y: -5)
                            Text("\(smallDecs)")
                                .font(.system(size: 14))
                        }
                        
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 25)
                    .padding(.vertical, 30)
                }
                .frame(maxHeight: 305, alignment: .bottom)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .overlay(
                Image(systemName: "eye.circle.fill")
                    .resizable()
                    .frame(width: 40, height:40)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .frame(maxHeight: 305, alignment: .bottom)
                    .padding()
                    .padding(.bottom, 40)
                    .foregroundColor(.white)
                
            )
            .clipped()
            .frame(width: screen.minWidth + 20, height: 305)
            .cornerRadius(22)
            
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
