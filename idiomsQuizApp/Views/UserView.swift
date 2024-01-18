//  UserView.swift
//  idiomsQuizApp
//  Created by Marcelo de Abreu on 18/01/24.
import SwiftUI
import PhotosUI

struct UserView: View {
    
    @State private var userProfilePicture: PhotosPickerItem?
    @State private var userProfilePictureObject: UIImage?
    
    
    var body: some View {
        Form {
            Section("Profile Image") {
                HStack {
                    Spacer()
                    
                    if let userProfilePictureObject {
                        Image(uiImage: userProfilePictureObject)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                    }
                    
                    PhotosPicker("Select a profile image", selection: $userProfilePicture)
                        .onChange(of: userProfilePicture) { newValue in
                            Task(priority: .userInitiated) {
                                if let newValue {
                                    if let loadedImageData = try? await
                                        newValue.loadTransferable(type: Data.self),
                                       let loadedImage = UIImage(data: loadedImageData)
                                    {
                                        self.userProfilePictureObject = loadedImage
                                    }
                                }
                            }
                        }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    UserView()
}
