//
//  ContentView.swift
//  Part8
//
//  Created by 内田豊彦 on 2024/08/26.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0  // @Stateはstruct ContentView以下にいれる
    @State var isShowContentView2 = false
    
    var body: some View {

        VStack {
            HStack {
                Button("-"){

                    // = count - 1
                    count -= 1
                }
                Text("Counter: \(count)")
                Button("+"){
                    //count = count + 1 // １ずつ増やすのはインクリメント
                    count += 1
                }
            }
            .padding()
            Button("ContentView2へ"){
                 isShowContentView2 = true
                
            }        }
        .font(.title)
        .sheet(isPresented: $isShowContentView2) {
            ContentView2(contentView2Count: $count)
        }
    }
}

struct ContentView2: View {
    @Binding var contentView2Count: Int
    var body: some View {
        VStack{
            Button("+10") {
                contentView2Count += 10
            }
            .font(.title)
            .padding()
            Button("+50") {
                contentView2Count += 50
            }
            .font(.title)
            .padding()
            Button("+100") {
                contentView2Count += 100
            }
            .font(.title)
        }
    }
}

#Preview {
    ContentView()
}
/*
#Preview {
    ContentView2(count: $count)
}

*/
