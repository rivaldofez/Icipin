//
//  TermsPage.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 23/05/22.
//

import SwiftUI

struct TermsPage: View {
    var body: some View {
        ZStack {
            CustomColor.white
            VStack(alignment:.center){
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text("ICIPIN")
                    .font(.system(.title2).bold())
                    .foregroundColor(.black)
                
                Text("Created by: McEat (Team 13 Afternoon Session")
                    .font(.system(.body))
                    .foregroundColor(.black)
                    .padding(5)
                
                Spacer()
                
                Text("Credit For Non-Commercial Asset")
                    .font(.system(.body).bold())
                    .foregroundColor(.black)
                    .padding(5)
                Text("Icons made by max.icons from www.flaticon.com")
                    .font(.system(.body))
                    .foregroundColor(.black)
                    .padding(5)
                Text("Icons made by meds from www.flaticon.com")
                    .font(.system(.body))
                    .foregroundColor(.black)
                    .padding(5)
                Text("Icons by Icons8 https://icons8.com")
                    .font(.system(.body))
                    .foregroundColor(.black)
                    .padding(5)
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Terms and Conditional")
    }
}

struct TermsPage_Previews: PreviewProvider {
    static var previews: some View {
        TermsPage()
    }
}
