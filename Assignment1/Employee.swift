//
//  Employee.swift
//  Assignment1
//
//  Created by Eezy Mongo on 2025-09-18.
//

import SwiftUI
// Creating the EmployeeOrder Structure that will hold every informations about the employee and his order
struct employeeOrder: View {
    var Name : String
    var employeePic : String
    var totalPrice : Int
    var item1: Item
    var item2: Item
    var item3: Item
    var item4: Item
    
    init(Name: String, employeePic: String, totalPrice: Int, item1: Item, item2: Item, item3: Item, item4: Item) {
        self.Name = Name
        self.employeePic = employeePic
        self.totalPrice = totalPrice
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
    } // initializing the variables
    
    
    var body: some View {
        VStack {  // this is the main view
           
            VStack { // the header with employee's picture, Name  and Tim's logo
                HStack{
                    Image("logoRed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    Spacer()
                    HStack{
                        VStack{
                            Text("Good Morning \n \(Name)")
                                .font(.system(size: 10, weight: .semibold))
                                .multilineTextAlignment(.trailing)
                        }
                        Image(employeePic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                    }
                }
                .padding(.horizontal, 25)
                .padding(.vertical, 5)
               
            }
            
                // building the order details
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
                    Text("Total $\(totalPrice)")
                        .padding(.bottom,5)
                        .font(.system(size: 15, weight: .semibold))
                    HStack{
                        Text("Pickup")
                            .font(.system(size: 12))
                        Image(systemName:"shippingbox") // using SF symbol for the type of "delivery"
                            .font(.system(size: 12))
                    }
                }
                
            }
        
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.contour, lineWidth: 1)
            )
            .frame(maxWidth: 370, maxHeight: 110)
          
            
          
                HStack{
                    
                    item1
                    Spacer()
                    item2
                }
                .padding(.horizontal)
           
            HStack{
                
                item3
                Spacer()
              item4
            }
            .padding(.horizontal)
            Text("Swipe left or Right to reveal the next or previous order")
                .font(.system(size: 13))
                .padding()
                .foregroundStyle(.accent)
            
          /*  HStack(alignment: .center, spacing: 10){
                
                cta(btTitle: " +  ADD ITEMS")
                Spacer()
                secondaryBt(btTitle: "NEXT")
            }
            .padding(.horizontal, 20)
            .padding(.top)*/
        }
        
       
        

    }
    }


#Preview {
    employeeOrder(Name: "Owens", employeePic: "employee3", totalPrice: 50, item1: .init(imageProduct: "cupCake", title: "CuPCake", description: "Chocolate flavour", quantity: 2, price: 10),item2: .init(imageProduct: "cupCake", title: "CuPCake", description: "Chocolate flavour", quantity: 2, price: 10),item3: .init(imageProduct: "cupCake", title: "CuPCake", description: "Chocolate flavour", quantity: 2, price: 10),item4: .init(imageProduct: "cupCake", title: "CuPCake", description: "Chocolate flavour", quantity: 2, price: 10) )
}
