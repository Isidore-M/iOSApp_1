//
//  Item.swift
//  Assignment1
//
//  Created by Eezy Mongo on 2025-09-17.
//

import SwiftUI

struct Item: View {
    var imageProduct : String
    var title : String
    var description : String
    var quantity: Int
    var price : Int
    
    var body: some View {
        
     
        
            
            VStack{
                
                
                Image(imageProduct)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
                HStack {
                    VStack(alignment: .leading, spacing: 4){
                        Text(title)
                            .font(.system(size: 15, weight: .semibold))
                        
                        Text(description)
                        
                            .font(.system(size: 11, weight: .regular))
                        
                    }
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.contour)
                }
                .padding(.vertical)
                HStack{
                    
                    HStack(alignment: .center, spacing:11){
                        Button("-") {
                            
                        }
                        .frame(width: 20, height: 20)
                        .background(Color.contour)
                        .foregroundColor(.black)
                        .cornerRadius(2)
                        
                        Text("\(quantity)")
                            .padding(.horizontal,-6)
                        Button("+") {
                            
                        }
                        .frame(width: 20, height: 20)
                        .background(Color.accent)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                        
                    }
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.contour, lineWidth: 0.7)
                    )
                    
                    Spacer()
                    Text("$\(price)")
                    
                }
                
                
            }
          
            
           
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.contour, lineWidth: 1.5)
            )
           
            .background(.white)
            .cornerRadius(15)
            .frame(maxWidth: 195, maxHeight: 270)
            
        }
            
            
        }
       
    


#Preview {
    Item(imageProduct: "", title: "", description: "", quantity: 3, price:12)
}
