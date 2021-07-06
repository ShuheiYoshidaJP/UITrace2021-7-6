//
//  ContentView.swift
//  UITrace2021年7月6日
//
//  Created by 吉田周平 on 2021/07/06.
//

import SwiftUI

struct ContentView: View {
    @State var showingLoginView = false
    var body: some View {
        ZStack {
            Image("luke-chesser-3rWagdKBF7U-unsplash")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("The time to act is now")
                    .foregroundColor(.white)
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 120,
                                        leading: 64,
                                        bottom: 0,
                                        trailing: 64))
                Spacer()
                Text("Your path is laid out in front of you. By getting started, you aleready took the biggest step in self-improvement.\nWe will guide you through id")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 0,
                                        leading: 32,
                                        bottom: 64,
                                        trailing: 32))
                NavigationLink(destination: LoginView()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(.sRGB,
                                          red: 243/255,
                                          green: 73/255,
                                          blue: 169/255,
                                          opacity: 1.0))
                        .cornerRadius(12)
                        .padding()
                }
            }
        }
        .sheet(isPresented: $showingLoginView,
               content: { LoginView() })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
