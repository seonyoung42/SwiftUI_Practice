//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 장선영 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    /// 어떤 View가 있을 지 모르기 때문에 some 붙임
    /// 정확한 타입인 ModifiedContent<ModifiedContent< ... 를 작성해도 되지만 이것은 너무 비효율적임
    var body: some View {
        Button("Hello, world!") {
            print(type(of: self.body))
            ///ModifiedContent<ModifiedContent<Button<Text>, _FrameLayout>, _BackgroundStyleModifier<Color>>
        }
        .frame(width: 100, height: 100)
        .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
