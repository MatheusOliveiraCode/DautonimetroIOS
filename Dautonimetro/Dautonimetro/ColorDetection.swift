//
//  ColorDetection.swift
//  Dautonimetro
//
//  Created by Matheus de Oliveira on 16/12/22.
//

import SwiftUI
import PhotosUI

struct ColorDetection: View {
    
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
        VStack{
            Text("Selecione uma imagem da sua coleção!")
            
            
            PhotosPicker(
                   selection: $selectedItem,
                   matching: .images,
                   photoLibrary: .shared()) {
                       Text("Select a photo")
                   }.onChange(of: selectedItem){
                       newItem in Task{
                           if let data = try? await newItem?.loadTransferable(type: Data.self){
                               selectedImageData = data
                           }
                       }
                   }
            
            if let selectedImageData,
               let uiImage = UIImage(data: selectedImageData){
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width:250,height:250)
            }
            Spacer()
            Button(action:{}
            ){
                Text("Abrir imagem")
            }
        }
    }
}

struct ColorDetection_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetection()
    }
}
