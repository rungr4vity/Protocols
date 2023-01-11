//
//  Protocols.swift
//  oct
//
//  Created by Francisco Perez on 31/12/22.
//

import SwiftUI

struct DefaultColorTheme: ColorThemeProtocol{
    var primary: Color = .blue
    var secondary: Color = .white
    var tertiary: Color = .gray
}

struct AlternativeColorTheme: ColorThemeProtocol{
    let primary: Color = .red
    let secondary: Color = .white
    let tertiary: Color = .green
}

struct anotherThemeProtocol: ColorThemeProtocol{
    var primary: Color = .blue
    var secondary: Color = .purple
    var tertiary: Color = .brown
}

protocol ColorThemeProtocol{
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}

struct Protocols: View {
    
    //let colorTheme: DefaultColorTheme = DefaultColorTheme()
    let colorTheme:ColorThemeProtocol
    
    var body: some View {
        
        ZStack{
            
            colorTheme.tertiary
                .ignoresSafeArea()
            
            Text("Protocols are cool")
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
            
        }
       
    }
}

struct Protocols_Previews: PreviewProvider {
    static var previews: some View {
        Protocols(colorTheme: anotherThemeProtocol())
    }
}
