//
//  ContentView.swift
//  CryptoCrazySwiftUI
//
//  Created by Onur Şahin on 9.01.2025.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var cryptoListViewModel : CryptoListViewModel
    init() {
        self.cryptoListViewModel = CryptoListViewModel()
    }
    var body: some View {
        NavigationView {
            
                List(cryptoListViewModel.cryptoList, id:\.id) { crypto in
                    VStack{
                        Text(crypto.currency ?? "")
                        .font(.title3)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Text(crypto.price ?? "")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                }
            
                }.toolbar(content: {
                    Button{
                        Task.init {
//                            cryptoListViewModel.cryptoList = []
                             await   cryptoListViewModel.downloadCryptosContinuation(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
                        }
                    } label: {
                         Text("Refresh")
                    }
                })
                .navigationTitle(Text("Crypto Crazy"))
    }
        .task {
            await   cryptoListViewModel.downloadCryptosContinuation(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
//         await   cryptoListViewModel.downloadCryptosAsync(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
        }
        /*
        .onAppear{
        cryptoListViewModel.downloadCrypto(url:     URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
    }
        */
    }
}

#Preview {
    MainView()
}
