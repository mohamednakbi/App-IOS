import SwiftUI

struct FormOTPView: View {
    @StateObject var formOTPViewModel = FormOTPViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrowleft")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        Text(StringConstants.kMsgEnterTheVeri)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(72.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(54.0))
                            .padding(.trailing, getRelativeWidth(79.0))
                        Text(StringConstants.kMsgEnterThpe4Digit)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(37.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.trailing, getRelativeWidth(78.0))
                        OTPView(text: $formOTPViewModel.otpviewOTP1, width: 327.0, height: 70.0,
                                fieldsCount: 4,
                                displayType: .roundedCorner,
                                defaultBackgroundColor: ColorConstants.Gray100,
                                filledBackgroundColor: ColorConstants.Gray100,
                                defaultBorderColor: ColorConstants.IndigoA400,
                                filledBorderColor: ColorConstants.IndigoA400)
                            .frame(width: 327.0, height: 70.0)
                        Text("Group6729")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(224.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLbl0021)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(15.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeHeight(50.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                            }
                        })
                        .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        HStack {
                            Text(StringConstants.kMsgDidnTReceiveThe)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(136.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblResendOtp)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.IndigoA400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(73.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                        .frame(width: getRelativeWidth(213.0), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0),
                           alignment: .center)
                    Button(action: {
                        formOTPViewModel.nextScreen = "LocationEmptyView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSubmit)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(134.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(25.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                           bottomLeft: 35.0, bottomRight: 35.0)
                                        .fill(ColorConstants.IndigoA400))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LocationEmptyView(),
                                   tag: "LocationEmptyView",
                                   selection: $formOTPViewModel.nextScreen,
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

struct FormOTPView_Previews: PreviewProvider {
    static var previews: some View {
        FormOTPView()
    }
}
