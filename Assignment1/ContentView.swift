//
//  ContentView.swift
//  Assignment1
//
//  Created by Eezy Mongo on 2025-09-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            VStack {
                HStack{
                    Image("logoRed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    Spacer()
                    HStack{
                        VStack{
                            Text("Good Morning \nArthur")
                                .font(.system(size: 10, weight: .semibold))
                                .multilineTextAlignment(.trailing)
                        }
                        Image("employee2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                    }
                }
                .padding(.horizontal, 25)
                .padding(.vertical, 5)
               
            }
            
        
            HStack{
                VStack{
                    Text("ORDER DETAILS")
                        .font(.system(size: 17, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,40)
                        .padding(.bottom, 5)
                    Text(" We’ll have your order ready at \n the counter when you arrive")
                        .font(.system(size: 11, weight: .regular))
                        .multilineTextAlignment(.leading)
                }
                .multilineTextAlignment(.leading)
                Spacer()
                VStack{
                    Text("Total $56")
                        .padding(.bottom,5)
                        .font(.system(size: 15, weight: .semibold))
                    HStack{
                        Text("Pickup")
                            .font(.system(size: 12))
                        Image(systemName:"shippingbox")
                            .font(.system(size: 12))
                    }
                }
                
            }
        
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.contour, lineWidth: 1)
            )
            .frame(maxWidth: 370, maxHeight: 150)
          
            
            VStack {
                HStack{
                    
                    Item(imageProduct: "salad1", title: "Salad", description: "Lettuce, Cheese", quantity: 1, price: 12)
                    Spacer()
                    Item(imageProduct: "coffeeCup", title: "Large Coffee", description: "Black coffee", quantity: 1, price: 11)
                }
                .padding(.horizontal)
            }
            HStack{
                
                Item(imageProduct: "salad1", title: "Salad", description: "Lettuce, Cheese", quantity: 1, price: 12)
                Spacer()
                Item(imageProduct: "coffeeCup", title: "Large Coffee", description: "Black coffee", quantity: 1, price: 11)
            }
            .padding(.horizontal)
        
        }
        
       
        

    }
}

#Preview {
    ContentView()
}
