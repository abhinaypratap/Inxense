import SwiftUI

struct LoginScreen: View {
    @State private var email = "amarakhbarantony@gmail.com"
    @State private var password = "Xwdh12&ddsadas"
    @State private var isHidden = true
    
    var body: some View {
        ZStack {
            RectangleGradient()
            VStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading) {
                            
                            Text("Email ID")
                            VStack {
                                if #available(iOS 16.0, *) {
                                    TextField("Email", text: $email)
                                        .keyboardType(.emailAddress)
                                        .autocorrectionDisabled()
                                        .textInputAutocapitalization(.never)
                                        .bold()
                                        .foregroundColor(Color("purpleBottom"))
                                        .padding(.bottom, -5)
                                } else {
                                    TextField("Email", text: $email)
                                        .keyboardType(.emailAddress)
                                        .autocorrectionDisabled()
                                        .textInputAutocapitalization(.never)
                                        .foregroundColor(Color("purpleBottom"))
                                    .padding(.bottom, -5)
                                }
                                Divider()
                                    .background(Color(.darkGray))
                            }
                            
                            Text("Password")
                            VStack {
                                HStack {
                                    if isHidden {
                                        if #available(iOS 16.0, *) {
                                            TextField("Password", text: $password)
                                                .keyboardType(.emailAddress)
                                                .textInputAutocapitalization(.never)
                                                .autocorrectionDisabled()
                                                .bold()
                                                .foregroundColor(Color("purpleBottom"))
                                                .padding(.bottom, -5)
                                        } else {
                                            TextField("Password", text: $password)
                                                .keyboardType(.emailAddress)
                                                .textInputAutocapitalization(.never)
                                                .autocorrectionDisabled()
                                                .foregroundColor(Color("purpleBottom"))
                                            .padding(.bottom, -5)
                                        }
                                    } else {
                                        if #available(iOS 16.0, *) {
                                            SecureField("Password", text: $password)
                                                .autocorrectionDisabled()
                                                .textInputAutocapitalization(.never)
                                                .bold()
                                                .foregroundColor(Color("purpleBottom"))
                                                .padding(.bottom, -5)
                                        } else {
                                            SecureField("Password", text: $password)
                                                .autocorrectionDisabled()
                                                .textInputAutocapitalization(.never)
                                                .foregroundColor(Color("purpleBottom"))
                                            .padding(.bottom, -5)
                                        }
                                    }
                                    
                                    Button {
                                        self.isHidden.toggle()
                                    } label: {
                                        Image(systemName: isHidden ? "eye.slash" : "eye")
                                            .resizable()
                                            .frame(width: 30, height: 20)
                                            .foregroundColor(Color.gray)
                                    }
                                }
                                Divider()
                                    .background(Color(.darkGray))
                                
                            }
                            
                        }
                        HStack {
                            Spacer()
                            
                            Button {
                                print("didTapForgotPassword")
                            } label: {
                                Text("Forgot Password")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        Button {
                            print("didTapLogin")
                        } label: {
                            Text("Login")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .frame(width: 290, height: 50)
                                .background(Color("buttonPurple"))
                                .cornerRadius(10)
                        }
                        .padding(.top, 40)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 30)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 350)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("purpleBottom") ,lineWidth: 2))
                    .shadow(radius: 10)
                }
                
                HStack {
                    Text("New User?")
                    Button("SignUp") {
                        print("didTapSignUp")
                    }
                    .padding(2)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(4)
                }
                .padding(.top, 20)
                
            }
            VStack {
                Spacer()
                let string: AttributedString = {
                    do {
                        var text = try AttributedString(markdown: "By using this app you agree to the **[terms & conditions](https://www.inxense.in/terms)** and the **[privacy policy](https://www.inxense.in/privacy-policy)**.")
                        if let range = text.range(of: "terms & conditions") {
                            text[range].foregroundColor = .black
                            text[range].underlineStyle = .single
                        }
                        if let range = text.range(of: "privacy policy") {
                            text[range].foregroundColor = .black
                            text[range].underlineStyle = .single
                        }
                        return text
                    } catch {
                        return ""
                    }
                }()
                Text(string)
                    .font(.system(size: 13, weight: .regular))
                    .padding([.leading, .trailing], 30)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
