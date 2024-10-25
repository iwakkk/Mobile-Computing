import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("header")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 150)
                    .cornerRadius(10)
                    .clipped()
                    .offset(y: 1)

                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .offset(y: 70)
            }

            VStack {
                Text("@Edward")
                    .foregroundColor(.gray)

                Text("Edward Suwandi")
                    .fontWeight(.medium)
                    .font(.title2)

                HStack {
                    Button(action: {
                        if let url = URL(string: "https://www.google.com/search?q=Surabaya") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Surabaya")
                            .foregroundColor(.blue)
                    }

                    Text("| Joined March 2023")
                        .foregroundColor(.gray)
                }.offset(y: 4)

                HStack {
                    Button(action: {}) {
                        HStack{
                            Image(systemName: "person.circle.fill")
                            Text("Follow")
                        }
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }

                    Button(action: {}) {
                        HStack{
                            Image(systemName: "message")
                            Text("Message")
                        }
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }

                    Button(action: {}) {
                        HStack{
                            Image(systemName: "ellipsis")
                            Text("More")
                        }
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                }.padding(.top, 15)

                Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that's what we want you to be as well")
                    .padding(10)
                    .frame(width: 350)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 60)

            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 20)
                .padding(.vertical, 10)

            VStack(alignment: .leading, spacing: 14) {
                Text("Information")
                    .fontWeight(.medium)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,10)
                
                HStack{
                    
                    HStack {
                        Image(systemName: "globe")
                            .foregroundColor(.gray)
                        Text("Website")
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                        Spacer()
                        Text("www.Edward.com")
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                    }
                        
                }
                
                HStack {
                Image(systemName: "envelope")
                        .foregroundColor(.gray)
                        Text("Email")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                                  Spacer()
                            Text("edward@gmail.com")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                        }
                
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    Text("Phone")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                    Spacer()
                    Text("+123 456 7890")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                }

                HStack {
                    Image(systemName: "calendar") // Calendar icon
                        .foregroundColor(.gray)
                    Text("Joined")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                    Spacer()
                    Text("26 March 2023")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                }
                Rectangle()
                    .fill(Color.gray.opacity(0.1))
                    .frame(height: 3)
                    .padding(.vertical, 10)
                
                HStack{
                    Button(action: {}) {
                        Text("UI Designer")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.gray .opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray .opacity(0.5), lineWidth: 1)
                            )
                    }
                    Button(action: {}) {
                        Text("UX Designer")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.gray .opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray .opacity(0.5), lineWidth: 1)
                            )
                    }
                    Button(action: {}) {
                        Text("Design System")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.gray .opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray .opacity(0.5), lineWidth: 1)
                            )
                    }
                    
                    
                }
                
                HStack{
                    Button(action: {}) {
                        Text("Product")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.gray .opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray .opacity(0.5), lineWidth: 1)
                            )
                    }
                    Button(action: {}) {
                        Text("Successfull")
                            .padding(8)
                            .foregroundColor(.black)
                            .background(Color.gray .opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray .opacity(0.5), lineWidth: 1)
                            )
                    }
                }
               

            }.padding(.horizontal, 17)

            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ContentView()
}
