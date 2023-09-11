//
//  Animate View Transitions.swift
//  demo
//
//  Created by Eric on 9/11/23.
//

import SwiftUI

struct Animate_View_Transitions: View {
    @State private var showIngredients = false
    
    let foodItems = ["Pizza", "Burger", "Pasta"]

    @State private var selectedFood = "Pizza"

    var body: some View {
        VStack {
            Picker(selection: $selectedFood) {
                ForEach(foodItems, id: \.self) {
                    Text($0)
                }
            } label: {
                Text("Please choose a food")
            }
            .padding()
            
            Button {
                withAnimation{
                    showIngredients.toggle()
                }
            } label: {
                Text(showIngredients ? "Hide ingredients": "Show Ingredients")
            }
            .padding()
            
            if showIngredients {
                IngredientView(food: selectedFood)
                    .transition(.move(edge: .leading))
            }
            Spacer()

        }
        .padding()
    }
}

struct Animate_View_Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Animate_View_Transitions()
    }
}

struct IngredientView: View {
    let food: String
    
    var ingredients: [String] {
      switch food {
      case "Pizza": return ["Dough", "Tomato Sauce", "Cheese", "Toppings"]
      case "Burger": return ["Bun", "Patty", "Lettuce", "Tomato", "Sauce"]
      case "Pasta": return ["Pasta", "Olive oil", "Garlic", "Tomato Sauce"]
      default: return []
      }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(food) Ingredients:")
                .font(.headline)
                .padding(.top)
            
            ForEach(ingredients, id: \.self) {
                ingredient in
                Text(ingredient)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.blue.opacity(0.2))
        .cornerRadius(10)
    }
}
