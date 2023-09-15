import SwiftUI

struct PaymentEmptyView: View {
    @StateObject var paymentEmptyViewModel = PaymentEmptyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
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
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSkip)
                                        .font(FontScheme
                                            .kMontserratRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                        .padding(.vertical, getRelativeHeight(11.0))
                                        .foregroundColor(ColorConstants.BlueGray800)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(38.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                                   bottomLeft: 19.0,
                                                                   bottomRight: 19.0)
                                                .fill(ColorConstants.Gray100))
                                        .padding(.top, getRelativeHeight(7.0))
                                        .padding(.bottom, getRelativeHeight(5.0))
                                }
                            })
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(38.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                       bottomLeft: 19.0, bottomRight: 19.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        Text(StringConstants.kMsgAddYourPayme)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(76.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(55.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        Text(StringConstants.kMsgYouCanEditTh)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        VStack {
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblYourName)
                                        .font(FontScheme
                                            .kRalewayRomanBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kMsg)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(104.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(42.0))
                                }
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(79.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(23.0))
                                Spacer()
                                Image("img_subtract_white_a700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(130.0),
                                           height: getRelativeHeight(97.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(6.0))
                            }
                            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(103.0),
                                   alignment: .trailing)
                            .padding(.leading, getRelativeWidth(24.0))
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblBalance)
                                        .font(FontScheme
                                            .kRalewayRomanSemiBold(size: getRelativeHeight(8.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(33.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLbl41)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                Spacer()
                                Image("img_iconwallet")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(9.0))
                            }
                            .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(23.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(180.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.BlueGray80001))
                        .padding(.top, getRelativeHeight(51.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HStack {
                                    Image("img_reply_20x20")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblPaypal)
                                        .font(FontScheme
                                            .kRalewayMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(34.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                                HStack {
                                    Image("img_volume_11x20")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblMastercard2)
                                        .font(FontScheme
                                            .kRalewayMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(57.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(134.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.leading, getRelativeWidth(10.0))
                                HStack {
                                    Image("img_user_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblVisa)
                                        .font(FontScheme
                                            .kRalewayMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(21.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(102.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.leading, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                        }
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        Text("Group6849")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(167.0))
                        Image("image_not_found")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0),
                           alignment: .center)
                    Button(action: {
                        paymentEmptyViewModel.nextScreen = "PaymentPaypalTabContainerView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblNext)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(145.0))
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
                    NavigationLink(destination: PaymentPaypalTabContainerView(),
                                   tag: "PaymentPaypalTabContainerView",
                                   selection: $paymentEmptyViewModel.nextScreen,
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

struct PaymentEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentEmptyView()
    }
}
