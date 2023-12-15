//  ContentView.swift
//  laboratorium_9_zadanie_1
import SwiftUI

struct ContentView: View {
    @State private var currentImageIndex = 0
    @State private var isShowingImageTitle = false
    
    var body: some View {
        
        
        VStack {
            Image(uiImage: gallery[currentImageIndex].image ?? UIImage())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .gesture(
                                DragGesture()
                                    .onEnded { gesture in
                                        if gesture.translation.width < 0 {
                                            self.showNextImage()
                                        } else if gesture.translation.width > 0 {
                                            self.showPreviousImage()
                                        }
                                    }
                            )
                            .gesture(TapGesture().onEnded{self.showNextImage()})
                            .onLongPressGesture {
                                self.isShowingImageTitle.toggle()
                            }
             
                        if isShowingImageTitle {
                            Text(gallery[currentImageIndex].title)
                                .font(.title)
                                .padding()
                                .background(Color.black.opacity(0.8))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding()
                                .transition(.opacity)
                        }
        }
         
        .padding()
    }


func showNextImage() {
    currentImageIndex = (currentImageIndex + 1) % gallery.count
    isShowingImageTitle = false
}

func showPreviousImage() {
    currentImageIndex = (currentImageIndex + gallery.count - 1) % gallery.count
    isShowingImageTitle = false
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
