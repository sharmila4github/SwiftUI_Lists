//
//  ContentView.swift
//  day8_MoreOnlist
//
//  Created by Raghav Deo on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    let Grocerycategory = GroceryCategory.all()
    
  var body: some View {
        
      List{
          ForEach(Grocerycategory.self,id: \.title) { category in
              Section( header: /*@START_MENU_TOKEN@*/Text(category.title)/*@END_MENU_TOKEN@*/.font(.title))
              {
                  ForEach(category.groceryItems.self,id: \.title)
                  {
                      gi in
                      HStack
                      {
                          Text(gi.title).frame(width:70)
                          Spacer()
                          Text("\(gi.price)")
                      }
                  }
                  
              }
          }
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
