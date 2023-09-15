import SwiftUI

struct RegisterFormEmptyView: View {
    @StateObject var registerFormEmptyViewModel = RegisterFormEmptyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image("img_arrowleft")
                            })
                            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            Text(StringConstants.kMsgCreateYourAcc)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(287.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(55.0))
                            Text(StringConstants.kMsgQuisNostrudEx2)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(277.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(28.0))
                            HStack {
                                Spacer()
                                Image("img_user_20x20")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .cornerRadius(0.0)
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                TextField(StringConstants.kLblFullName,
                                          text: $registerFormEmptyViewModel.fullnameText)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Indigo200)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(51.0))
                            HStack {
                                Spacer()
                                Image("img_arrowdown")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                TextField(StringConstants.kLblEmail,
                                          text: $registerFormEmptyViewModel.emailText)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Indigo200)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(15.0))
                            HStack {
                                Spacer()
                                Image("img_lock")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                SecureField(StringConstants.kLblPassword,
                                            text: $registerFormEmptyViewModel.passwordText)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Indigo200)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(15.0))
                            Text(StringConstants.kLblShowPassword)
                                .font(FontScheme
                                    .kRalewayRomanSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                            Button(action: {
                                registerFormEmptyViewModel.nextScreen = "FormOTPView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblRegister2)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.trailing, getRelativeWidth(129.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(70.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                                   bottomLeft: 35.0,
                                                                   bottomRight: 35.0)
                                                .fill(ColorConstants.IndigoA400))
                                        .padding(.top, getRelativeHeight(36.0))
                                }
                            })
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                       bottomLeft: 35.0, bottomRight: 35.0)
                                    .fill(ColorConstants.IndigoA400))
                            .padding(.top, getRelativeHeight(36.0))
                        }
                        Group {
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
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .center)
                                            .background(ColorConstants.WhiteA700)
                                            .padding(.horizontal, getRelativeWidth(145.5))
                                    }
                                })
                                .frame(width: getRelativeWidth(35.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                                .padding(.horizontal, getRelativeWidth(145.5))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
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
                                            registerFormEmptyViewModel.googleSignIn()
                                        }
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
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
                                            registerFormEmptyViewModel.facebookSignIn()
                                        }
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(20.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(801.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kMsgAlreadyHaveAn3)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblLogin)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.IndigoA400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(4.0))
                            .onTapGesture {
                                registerFormEmptyViewModel.nextScreen = "LoginView"
                            }
                    }
                    .frame(width: getRelativeWidth(220.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(77.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: FormOTPView(),
                                   tag: "FormOTPView",
                                   selection: $registerFormEmptyViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $registerFormEmptyViewModel.nextScreen,
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

struct RegisterFormEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterFormEmptyView()
    }
}
