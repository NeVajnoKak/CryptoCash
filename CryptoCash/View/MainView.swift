import SwiftUI

struct MainView: View {
    
    @State private var animateGradient: Bool = false
    
    
    private let blueColor : Color = Color(red:0.36, green: 0.79, blue: 0.85)
    private let greenColor: Color = Color(red: 0.53 , green: 1, blue: 0.26)
    private let yellowColor: Color = Color(red: 0.9, green: 0.98, blue: 0.35)
    
    private let orangeColor: Color = Color(red: 1, green: 0.83, blue: 0)
    
    private let startColor: Color = .black
    private let endColor: Color = .green
    
    var body: some View {
        VStack {
            VStack{
                HStack{
                    Button (){
                        
                    } label: {
                        ZStack{
                            HStack{
                                Circle()
                                    .foregroundColor(Color(red: 0.63, green: 0.94, blue: 0.7))
                                
                                Text("Jane Cooper")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 15))
                                    .lineLimit(1)
                                
                                
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(.white)
                                    .font(.system(size: 10))
                                    .padding([.trailing],10)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .zIndex(1)
                            
                            
                            Rectangle()
                            
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24, opacity: 0.4))
                        }
                        
                        
                    }.frame(width: 167, height: 40)
                        .cornerRadius(30)
                    //                        .padding(.leading, 22)
                    Spacer()
                    
                    Button () {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    }
                    .frame(width: 40, height: 40)
                    VStack{
                        Button() {
                            
                        } label: {
                            ZStack{
                                Image(systemName: "barcode.viewfinder")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .zIndex(1)
                                Rectangle(
                                    
                                )
                                .foregroundColor(Color(red: 0.23, green: 0.39, blue: 0.42, opacity: 0.4))
                            }
                        }
                        .cornerRadius(9)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(Color(red: 0.95, green: 0.95, blue: 0.95, opacity : 0.4), lineWidth: 1)
                        )
                        .frame(width: 40, height: 40)
                        //                        .padding(.trailing, 22)
                    }
                }
                .padding([.top], 56)
                .padding([.bottom],20)
                ZStack{
                    
                    VStack{
                        HStack{
                            VStack(alignment: .leading) {
                                Text("Total Balance")
                                    .font(.system(size: 15))
                                    .foregroundStyle(Color(red: 0.4, green: 0.52, blue: 0.24))
                                    .padding(.top,6)
                                
                                Text("$48,456.67")
                                    .font(.system(size: 35))
                                    .padding(.top,1)
                                
                            }
                            .padding(.bottom,25)
                            
                            Spacer()
                            Button(){
                                
                            } label: {
                                ZStack{
                                    Image(systemName: "arrow.triangle.2.circlepath")
                                        .foregroundColor(.black)
                                        .zIndex(1)
                                        .font(.system(size: 15))
                                    Circle()
                                        .foregroundColor(Color(red: 0.58, green: 0.77, blue: 0.35))
                                }
                                
                            }
                            .frame(width: 50, height: 50)
                        }
                        .padding(.bottom, 30)
                        .padding([.leading,.trailing], 10)
                        
                        HStack (spacing:20){
                            VStack{
                                Button(){
                                    
                                } label: {
                                    ZStack{
                                        Image(systemName: "arrow.up")
                                            .zIndex(1)
                                            .foregroundColor(.white)
                                            .font(.system(size: 15))
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                                
                                Text("Send")
                            }
                            
                            VStack{
                                Button(){
                                    
                                } label: {
                                    ZStack{
                                        Image(systemName: "arrow.down")
                                            .zIndex(1)
                                            .foregroundColor(.white)
                                            .font(.system(size: 15))
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.black)
                                    }
                                }
                                Text("Receive")
                            }
                            VStack{
                                Button(){
                                    
                                } label: {
                                    ZStack{
                                        Image(systemName: "arrow.left.arrow.right")
                                            .zIndex(1)
                                            .foregroundColor(.white)
                                            .font(.system(size: 15))
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.black)
                                    }
                                }
                                Text("Swap")
                            }
                            VStack{
                                Button(){
                                    
                                } label: {
                                    ZStack{
                                        Image(systemName: "cart")
                                            .zIndex(1)
                                            .foregroundColor(.white)
                                            .font(.system(size: 15))
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.black)
                                    }
                                }
                                Text("Buy & Sell")
                            }
                        }
                    }
                    .padding([.leading,.trailing], 15)
                    .zIndex(111)
                    
                    
                    
                    
                    Rectangle()
                        .frame(width: .infinity, height: 249)
                        .foregroundColor(Color(red: 0.74, green: 1, blue: 0.43))
                        .cornerRadius(20)
                        .zIndex(1)
                }
                
            }
            .padding([.leading, .trailing,.bottom], 22)
            .background {
                LinearGradient(colors: [startColor ,endColor], startPoint: .bottomLeading, endPoint: .trailing)
                    .edgesIgnoringSafeArea(.all)
                    .hueRotation(.degrees(animateGradient ? 40 : 0))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                            animateGradient.toggle()
                        }
                    }
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Button(){
                        
                    } label: {
                        ZStack{
                            Text("Crypto")
                                .zIndex(1)
                                .foregroundColor(.black)
                            Rectangle()
                                .frame(width: 180, height: 50)
                                .foregroundColor(.clear) // Устанавливаем цвет текста прозрачным
                                .overlay(
                                    LinearGradient(colors: [yellowColor, greenColor, blueColor], startPoint: .bottomLeading, endPoint: .trailing)
                                        .hueRotation(.degrees(animateGradient ? 40 : 0))
                                )
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                                        animateGradient.toggle()
                                    }
                                }
                                .cornerRadius(13)
                        }
                        
                    }
                    Button(){
                        
                    } label: {
                        ZStack{
                            Text("NFTs")
                                .zIndex(1)
                                .foregroundColor(.white)
                            Rectangle()
                                .frame(width: 155, height: 50)
                                .foregroundColor(.black)
                                .cornerRadius(13)
                        }
                        
                    }
                    
                }
                .padding(4)
                .border(greenColor)
                .cornerRadius(15)
            }
            .padding(.top , 15)
            
            
            ScrollView {
                VStack{
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                    
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                    
                    
                    
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                    
                    
                    
                    
                    
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                    
                    
                    
                    
                    Button(){
                    } label: {
                        Circle()
                            .frame(width: 40,height: 40)
                            .foregroundColor(orangeColor)
                        VStack{
                            HStack{
                                Text("Bitcoin (BTC)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                Spacer()
                                Text("0.35")
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("$0.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                                Text("+3.19%")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.green)
                                Spacer()
                                
                                Text("$26,360.29")
                                    .font(.system(size: 10))
                                    .foregroundStyle(.gray)
                            } .padding(.top,1)
                        }
                    }
                    .padding(.bottom,15)
                }
                .padding([.leading, .trailing], 22)
                .padding(.top , 25)
                
                
            }
            ZStack{
                HStack{
                    Button(){
                        
                    } label: {
                        ZStack{
                            HStack(){
                                ZStack{
                                    Image(systemName: "house.fill")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15))
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.clear)
                                        .border(Color(red: 0.74, green: 1, blue: 0.43))
                                        .cornerRadius(20)
                                }.padding(.trailing, 10)
                                
                                
                                Text("Home")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 15))
                            }.zIndex(1)
                            
                            
                            
                            Rectangle()
                                .frame(width: 153, height: 60)
                                .cornerRadius(25)
                                .foregroundColor(Color(red:0.07, green: 0.09, blue: 0.11))
                        }
                        
                    }
                    
                    
                    Button(){
                        
                    } label: {
                        ZStack{
                            Image(systemName: "arrow.left.arrow.right")
                                .foregroundColor(.white)
                                .zIndex(1)
                            
                            
                            
                            Rectangle()
                                .frame(width: 60, height: 60)
                                .cornerRadius(500)
                                .foregroundColor(Color(red:0.07, green: 0.09, blue: 0.11))
                        }
                        
                    }
                    Button(){
                        
                    } label: {
                        ZStack{
                            Image(systemName: "creditcard")
                                .foregroundColor(.white)
                                .zIndex(1)
                            
                            
                            
                            Rectangle()
                                .frame(width: 60, height: 60)
                                .cornerRadius(500)
                                .foregroundColor(Color(red:0.07, green: 0.09, blue: 0.11))
                        }
                        
                    }
                    Button(){
                        
                    } label: {
                        ZStack{
                            Image(systemName: "network")
                                .foregroundColor(.white)
                                .zIndex(1)
                            
                            
                            
                            Rectangle()
                                .frame(width: 60, height: 60)
                                .cornerRadius(500)
                                .foregroundColor(Color(red:0.07, green: 0.09, blue: 0.11))
                        }
                        
                    }
                    
                }
                .zIndex(1)
                Rectangle()
                    .frame(width: .infinity, height: 70)
                    
            }
            Spacer()
        }
        
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(red: 0.04, green: 0.05, blue: 0.07))
        .edgesIgnoringSafeArea(.all)
    }
}

extension Color {
    static let customBtn = Color("")
}


#Preview {
    MainView()
        
    //        .preferredColorScheme(.light)
}

