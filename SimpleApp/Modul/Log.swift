//
//  News.swift
//  SimpleApp
//
//  Created by Semmy Lee on 1/20/23.
//

import Foundation

struct News: Hashable {
    var title: String
    var secTitle: String
    var aboutNews: String
    var imgURL: String
    var smalDisc: String
    
    static var sampleNews: [News] {[
        News(title: "The Circle", secTitle: "Of Fifths", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/20/fb/05/20fb05d151129c1dc4fabdd97c5fd824.jpg", smalDisc: "Find your beauty"),
        News(title: "Moon", secTitle: "Appollo", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/87/93/78/8793781ad1d111d0049f3fd88e2a9b89.jpg", smalDisc: "First man on the moon"),
        News(title: "Old Japaness", secTitle: "Car", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/15/8c/68/158c68cceeca9244927b2dba06cfacd8.jpg", smalDisc: "Cool old car"),
        News(title: "Tuch", secTitle: "Grass", aboutNews: "Grasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss", imgURL: "https://i.pinimg.com/736x/c0/08/1f/c0081fa3dbc5f1bc66a12441657d329a.jpg", smalDisc: "Cool old car"),
        News(title: "6 Beauty", secTitle: "Tips", aboutNews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quam elit, cursus in odio vitae, elementum condimentum purus. Donec varius enim eu nibh tristique, ac blandit diam auctor. Nulla sed nisi vestibulum, euismod turpis eget, vestibulum urna. Suspendisse aliquam, sapien et auctor varius, massa nunc interdum nulla, quis maximus magna lectus ut justo. Proin in lacus imperdiet, molestie ex ac, posuere erat. Integer blandit nulla neque, et maximus velit dictum sed. In eget accumsan massa, id dictum arcu. Suspendisse vel dictum sapien. Fusce id metus vel mi laoreet imperdiet. Proin et lectus orci. Suspendisse ut suscipit odio. Fusce eu cursus magna, ac convallis metus. Mauris dictum neque eros, ut efficitur lacus dignissim no", imgURL: "https://i.pinimg.com/564x/c1/d5/1d/c1d51df66b8acb2f9a3f443ea9d20f46.jpg", smalDisc: "True beauty")
    ]}
}
