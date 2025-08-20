import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

// MARK: - Login View
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // App Logo
            Image(systemName: "lock.shield.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundColor(.blue)
                .padding(.bottom, 30)
            
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Login to continue")
                .foregroundColor(.gray)
            
            // Email
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            // Password
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            
            // Login button
            Button(action: {
                // login logic
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            .padding(.top, 10)
            
            // Forgot password
            Button("Forgot Password?") {
                // reset logic
            }
            .foregroundColor(.blue)
            .padding(.top, 5)
            
            Spacer()
            
            // Sign up redirect
            HStack {
                Text("Don't have an account?")
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 30)
        }
        .padding()
    }
}

// MARK: - Sign Up View
struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.badge.plus")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundColor(.blue)
                .padding(.bottom, 30)
            
            Text("Create Account")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Full Name", text: $name)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            
            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            
            Button(action: {
                // signup logic
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            .padding(.top, 10)
            
            Spacer()
            
            HStack {
                Text("Already have an account?")
                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 30)
        }
        .padding()
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
