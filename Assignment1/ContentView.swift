//
//  ContentView.swift
//  Assignment1
//
//  Created by Eezy Mongo on 2025-09-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.bg)
                .ignoresSafeArea()
            TabView{
                // Calling 4 instance of employee to create a tabview of 4 pages
                employeeOrder(Name: "Naomi", employeePic: "employee1", totalPrice: 50, item1: .init(imageProduct: "salad2", title: "Salad", description: "Lettuce, Chicken", quantity: 1, price: 10),item2: .init(imageProduct: "cupCake", title: "CuPCake", description: "Chocolate flavour", quantity: 3, price: 15),item3: .init(imageProduct: "coffeeCup", title: "Large Coffee", description: "Mocha Late", quantity: 1, price: 13),item4: .init(imageProduct: "iceTea", title: "CuPCake", description: "Strawberry Tea ", quantity: 1, price: 10) ) // employee 1
                
                employeeOrder(Name: "Michael", employeePic: "employee2", totalPrice: 50, item1: .init(imageProduct: "danishCroissant", title: "Croissant Sun", description: "Lemon Cream", quantity: 1, price: 10),item2: .init(imageProduct: "waffles", title: "Waffles", description: "Chocolate, fruits", quantity: 3, price: 15),item3: .init(imageProduct: "coffeeCup", title: "small Coffee", description: "Black coffee", quantity: 1, price: 13),item4: .init(imageProduct: "coffeeCream", title: "Coffee Cream", description: "Coffee, milk, Cream ", quantity: 1, price: 10) ) // employee 2
                
                employeeOrder(Name: "Yvette", employeePic: "employee4", totalPrice: 50, item1: .init(imageProduct: "crepe", title: "Crepes", description: "Multi Flavour", quantity: 4, price: 16),item2: .init(imageProduct: "smoothie", title: "Pink Smoothie", description: "Strawberry, Milk", quantity: 3, price: 15),item3: .init(imageProduct: "parisBrest", title: "Paris-Brest", description: "cinnamon Cream", quantity: 2, price: 15),item4: .init(imageProduct: "coffeeCream", title: "Coffee Cream", description: "Coffee, milk, Cream ", quantity: 1, price: 10) ) // employee 3
                
                employeeOrder(Name: "Emerson", employeePic: "employee3", totalPrice: 50, item1: .init(imageProduct: "coffeeCup", title: "Large Coffee", description: "Machiatto", quantity: 1, price: 16),item2: .init(imageProduct: "panCake", title: "PanCake", description: "Honey, Mint", quantity: 3, price: 12),item3: .init(imageProduct: "juice", title: "Grapefruit Juice", description: "Cold pressed", quantity: 2, price: 15),item4: .init(imageProduct: "burger", title: "Burger Sup", description: "Beef, Bacon", quantity: 1, price: 10) )   // employee 4
                
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
    }
}
#Preview {
    ContentView()
}
