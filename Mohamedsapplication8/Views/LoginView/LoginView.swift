import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        ZStack(alignment: .center) {
                            Image("img_backgroundillustration_416x355_1")
                                .resizable()
                                .frame(width: getRelativeWidth(355.0),
                                       height: getRelativeHeight(416.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            HStack {
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image("img_arrowleft")
                                })
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.WhiteA700Cc))
                                .padding(.leading, getRelativeWidth(24.0))
                                Button(action: {}, label: {
                                    Image("img_question_white_a700")
                                })
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.BlueGray80001))
                                .padding(.horizontal, getRelativeWidth(24.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(50.0), alignment: .leading)
                            .padding(.bottom, getRelativeHeight(352.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(416.0),
                               alignment: .center)
                        Text(StringConstants.kMsgReadyToExplor)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(35.0))
                            .padding(.leading, getRelativeWidth(14.0))
                        Button(action: {
                            loginViewModel.nextScreen = "FormEmptyView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgContinueWithE)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.trailing, getRelativeWidth(69.0))
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(70.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                               bottomLeft: 35.0, bottomRight: 35.0)
                                            .fill(ColorConstants.IndigoA400))
                                    .padding(.top, getRelativeHeight(39.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                            }
                        })
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                                   bottomRight: 35.0)
                                .fill(ColorConstants.IndigoA400))
                        .padding(.top, getRelativeHeight(39.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                        ZStack(alignment: .center) {
                            Divider()
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.BlueGray50)
                                .padding(.top, getRelativeHeight(11.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblOr)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(10.0))
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .foregroundColor(ColorConstants.Indigo200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(22.0), alignment: .center)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.horizontal, getRelativeWidth(145.5))
                                }
                            })
                            .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA700)
                            .padding(.horizontal, getRelativeWidth(145.5))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        HStack {
                            ZStack {
                                Image("img_google")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(23.0))
                                    .padding(.horizontal, getRelativeWidth(66.5))
                                    .onTapGesture {
                                        loginViewModel.googleSignIn()
                                    }
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            Spacer()
                            ZStack {
                                Image("img_facebook")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(23.0))
                                    .padding(.horizontal, getRelativeWidth(66.5))
                                    .onTapGesture {
                                        loginViewModel.facebookSignIn()
                                    }
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(769.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kMsgDonTHaveAnA2)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblRegister2)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.IndigoA400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(4.0))
                            .onTapGesture {
                                loginViewModel.nextScreen = "RegisterFormEmptyView"
                            }
                    }
                    .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(18.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(77.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: RegisterFormEmptyView(),
                                   tag: "RegisterFormEmptyView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FormEmptyView(),
                                   tag: "FormEmptyView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
