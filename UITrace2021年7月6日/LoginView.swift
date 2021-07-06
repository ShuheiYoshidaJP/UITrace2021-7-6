//
//  LoginView.swift
//  UITrace2021年7月6日
//
//  Created by 吉田周平 on 2021/07/06.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                Color.blue
                    .edgesIgnoringSafeArea(.top)
                VStack(alignment: .leading) {
                    Text("What's your name?")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(EdgeInsets(top: 120,
                                            leading: 12,
                                            bottom: 48,
                                            trailing: 0))
                    VStack(alignment: .leading) {
                        HStack {
                            Text("What should we call you?")
                                .padding()
                            Spacer()
                        }
                        HStack {
                            TextField("Enter your name", text: $viewModel.name)
                                .padding(.leading)
                            Spacer()
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    
                    ToolbarItem(
                        placement: .principal,
                        content: {
                            Text("step 1 of 3")
                                .foregroundColor(.white)
                        }
                    )
                    
                    ToolbarItem(
                        placement: .primaryAction,
                        content: {
                            Button(action: {
                                
                            }) {
                                Text("Next")
                                    .foregroundColor(.white)
                                    .accentColor(.white)
                            }
                            .disabled(viewModel.nextButtonIsDisable)
                        }
                    )
                }
                
            }
           
        }
        .accentColor(.white)
    }
        
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

class LoginViewModel: ObservableObject {
    @Published var name = ""
    
    var nextButtonIsDisable: Bool {
        return name.isEmpty
    }
}
