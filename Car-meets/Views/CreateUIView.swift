//
//  CreateUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-03.
//

import SwiftUI

struct CreateUIView: View {
    @EnvironmentObject var manager: Manager
    
    @State private var title = ""
    @State private var location = ""
    @State private var date = Date()
    @State private var description = ""
    @State private var image: UIImage?
    @State private var isShowingImagePicker = false

    var body: some View {
        ScrollView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Create a Car Meet").font(.largeTitle).bold().foregroundColor(.black)
                        Spacer()
                    }.padding().padding(.top)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "textformat")
                        TextField("Name", text: $title)
                        
                        Spacer()
                        
                        if !title.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "location")
                        TextField("Location", text: $location)
                        
                        Spacer()
                        
                        if !location.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "calendar")
                        DatePicker("Date", selection: $date, displayedComponents: .date)
                        
                        Spacer()
                        
                        if !location.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "doc.text")
                        TextEditor(text: $description)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                        
                        Spacer()
                        
                        if !description.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    Section(header: Text("Image")) {
                        if let image = image {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: 200)
                        } else {
                            Button(action: {
                                isShowingImagePicker = true
                            }) {
                                Text("Select Image")
                            }
                        }
                    }
                    
                    Spacer()
                    Spacer()
                    
                    Button {
                        let carMeet = CarMeetsModel(title: title, image: "cm1", description: description, location: location, date: date)
                        manager.saveToBookMarks(carMeet: carMeet)
                    } label: {
                        Text("Create Car Meet").foregroundColor(.blue)
                            .font(.title3).bold().frame(maxWidth: .infinity).padding().background(RoundedRectangle(cornerRadius: 10).fill(Color("kSecondary"))).padding(.horizontal)
                    }
                }
            }
            .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: $image)
            }
        }
    }

    
    func loadImage() {
        // Handle image selection
    }
}


#Preview {
    CreateUIView().environmentObject(Manager())
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.allowsEditing = true
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let uiImage = info[.editedImage] as? UIImage {
                parent.image = uiImage
            }
            picker.dismiss(animated: true)
        }
    }
}
