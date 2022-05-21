//
//  VerifiedQuestView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct VerifiedQuestView: View {
    var body: some View {
        VStack {
            Text("CONGRATULATIONS")
                .font(.system(.title2).bold())
                .foregroundColor(.black)
            Text("Kamu telah berhasi; menjawab Questnya")
                .font(.system(.body))
                .foregroundColor(.black)
            Image("soto_betawi")
                .resizable()
                .frame(width: 200, height: 200)
            Text("Soto Betawi")
                .font(.system(.title2).bold())
        }
    }
}

struct VerifiedQuestView_Previews: PreviewProvider {
    static var previews: some View {
        VerifiedQuestView()
    }
}
