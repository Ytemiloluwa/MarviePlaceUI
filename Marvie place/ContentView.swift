//
//  ContentView.swift
//  Marvie place
//
//  Created by Temiloluwa on 12/01/2020.
//  Copyright © 2020 Temiloluwa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}
struct rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct type : Identifiable{
    
    var id : Int
    var rows : [row]
}

struct row : Identifiable {
    
    var id : Int
    var name : String
    var price : String
    var image : String
    
}

// i already made a sample data.....

var sizes = ["S","M","X","XL"]

var types = ["Shoes","Bags","Heels","Gowns"]

var datas = [
    
    
    type(id: 0,rows: [row(id:0,name: "Fit And Flare", price: "NG 4000", image: "Clothing (1)"),row(id:1,name: "Empire Dress", price: "NG 2000", image: "Clothing (6)")]),
    
    type(id: 2,rows: [row(id:0,name: "Summer Vibes", price: "NG 5000", image: "Clothing (16)"),row(id:1,name: "Flora Fun", price: "NG 3500", image: "Clothing (17)")]),
    
    type(id: 4,rows: [row(id:0,name: "Fit And Flare", price: "NG 4500", image: "Clothing (3)"),row(id:1,name: "Empire Dress", price: "NG 12000", image: "Clothing (9)")]),
    
    
    type(id: 6,rows: [row(id:0,name: "Summer Vibes", price: "NG 5500", image: "Clothing (11)"),row(id:1,name: "Flora Fun", price: "NG 7500", image: "Clothing (14)")]),
    
    
]
