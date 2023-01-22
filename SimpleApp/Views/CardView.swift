//
//  CardView.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/16/23.
//

import SwiftUI

struct CardView: View {
    
    let screen = ScreenCal()
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var title: String = "The Circle Of Fifths"
    @State var smalDec: String = "Find your beauty"
    @State var imgURL: String = "https://i.pinimg.com/736x/20/fb/05/20fb05d151129c1dc4fabdd97c5fd824.jpg"
    @State var aboutNews: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam malesuada, ante et accumsan hendrerit, arcu arcu euismod justo, eget consectetur nisl lacus in purus. Suspendisse at urna sed turpis molestie semper. Duis vel lectus vitae turpis ultricies ornare et eget sem. Morbi ut arcu et mauris consequat tempus a vitae massa. Suspendisse ac diam condimentum, lobortis erat nec, consectetur odio. Fusce hendrerit a metus ut elementum. Aliquam erat volutpat. Duis vitae lectus consectetur justo convallis porttitor. Nullam id tortor hendrerit, euismod augue vitae, convallis nisi. Duis sit amet bibendum tortor. Integer ac felis sit amet mi auctor vehicula quis in lectus. Cras at risus ex. Sed magna lectus, condimentum et dolor ut, vehicula efficitur dui. Quisque in nibh in nisi sagittis ornare vitae id ipsum. Sed lobortis eu nisl vitae faucibus. Maecenas sit amet mollis odio. Suspendisse lacinia placerat metus a pulvinar. Integer sit amet nisl velit. Praesent facilisis quis sapien quis luctus. Suspendisse in commodo quam, ut accumsan augue. Donec eleifend viverra sagittis. Praesent viverra justo vitae arcu dapibus, sit amet tincidunt velit suscipit. Quisque rhoncus accumsan metus, in pretium neque venenatis nec. Maecenas a vulputate orci. Quisque nec diam eget tortor suscipit euismod. Quisque viverra ullamcorper bibendum. Nullam ultrices orci ac luctus porta. Proin blandit nulla ut porttitor vestibulum."
    @State var data: Data?
    
    
    func load() {
        self.fatchData(urlString: "\(imgURL)")
    }
    
    func fatchData(urlString: String){
        guard let url = URL(string: "\(urlString)") else {
            print("ERROR: faild to create url")
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            if error == nil{
                self.data = data
            }
        }.resume()
    }
    
    var image: some View {
        VStack{
            if let data = data, let uiimage = UIImage(data: data){
                Image(uiImage: uiimage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: screen.width, height: 363)
                    .cornerRadius(22)
            } else {
                Image("")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: screen.width, height: 363)
                    .background(.gray)
                    .cornerRadius(22)
            }
        }
    }
    
    var body: some View {
        ZStack{
            Color("White").ignoresSafeArea()
            VStack{
                ScrollView{
                    image
                    VStack(alignment: .leading){
                        Text("\(title)")
                            .font(.system(size: 32, design: .monospaced))
                            .padding(.vertical)
                        Text("\(smalDec)")
                            .font(.system(size: 15, weight: .bold))
                            .padding(.horizontal,3)
                        Text("About this news")
                            .font(.system(size: 20, weight: .bold))
                            .padding(.top)
                            .padding(.bottom, 10)
                        Text("\(aboutNews)")
                            .font(.system(size: 16))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
                    .padding(.vertical, 10)
                    .foregroundColor(Color("DarkSilver"))
                    
                }
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrowtriangle.backward.fill")
                        .foregroundColor(.white)
                }
            }
        }
        .onAppear{
            load()
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
