//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import SwiftUI

struct ContentView: View {
    
    @State var phoneNumber: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                LogoView()
                CredentialsView()
                LoginButtonView()
                SignUpView()
            }
            .padding()
        }
        .ignoresSafeArea()
        .frame(maxHeight: .infinity)
    }

    @ViewBuilder
    func BackgroundView() -> some View {
        Image("BG")
            .resizable()
        Rectangle()
            .fill(.black.opacity(0.7))
    }
    
    @ViewBuilder
    func LogoView() -> some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
        
        Text("Sign In")
            .font(GilroyFont(isBold: true, size: 40))
            .foregroundColor(.white)
        
        Text("We've already met!")
            .font(GilroyFont(isBold: false, size: 14))
            .kerning(1)
            .multilineTextAlignment(.center)
            .foregroundColor(.white.opacity(0.7))
    }
    
    @ViewBuilder
    func CredentialsView() -> some View {
        VStack(spacing: 30) {
            PhoneNumberTextField(icon: "iphone.gen1", placeHolder: "Phone Number", text: $phoneNumber)
            
            SecurePasswordTextField(icon: "lock", placeHolder: "Password", text: $password)
            
            Text("Forgot Password?")
                .font(GilroyFont(isBold: true, size: 16))
                .kerning(0.6)
                .underline()
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.66, green: 0.49, blue: 0.22))
        }
        .frame(height: 400)
        
    }
    
    @ViewBuilder
    func LoginButtonView() -> some View {
        Button {
            
        } label: {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 320, height: 56)
                .background(Color(red: 0.33, green: 0.26, blue: 0.24))
                .cornerRadius(9)
                .overlay{
                    VStack {
                        Text("Sign In")
                            .font(GilroyFont(isBold: true, size: 18))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
        }
    }
    
    @ViewBuilder
    func SignUpView() -> some View {
        HStack {
            Text("Don't have an account?")
                .font(GilroyFont(size: 16))
                .kerning(0.3)
                .foregroundColor(.white)
            
            Text("Sign Up")
                .font(GilroyFont(isBold: true, size: 16))
                .kerning(0.6)
                .underline()
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.66, green: 0.49, blue: 0.22))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
