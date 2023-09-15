import SwiftUI

struct PaymentPaypalTabContainerView: View {
    @StateObject var paymentPaypalTabContainerViewModel = PaymentPaypalTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
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
                        .padding(.top, getRelativeHeight(24.0))
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
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblJonathan3)
                                .font(FontScheme.kRalewayRomanBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                            Text(StringConstants.kLblUserEmailCom)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(154.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(42.0))
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
                                    Text(StringConstants.kLbl12290)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(51.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                Image("img_computer")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(208.0))
                            }
                            .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(23.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(180.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.IndigoA400))
                        .padding(.top, getRelativeHeight(51.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        TabsView(tabs: $paymentPaypalTabContainerViewModel.tabWalletoptionList,
                                 selectedTabIndex: $paymentPaypalTabContainerViewModel
                                     .selectedWalletoptionIndex,
                                 selectedTab: paymentPaypalTabContainerViewModel
                                     .tabWalletoptionList[0], fontSize: 10.0,
                                 fontName: FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)),
                                 selectedFontColor: ColorConstants.WhiteA700,
                                 unSelectedFontColor: ColorConstants.WhiteA700,
                                 selectedBackColor: ColorConstants.IndigoA400,
                                 unSelectedBackColor: ColorConstants.Gray100,
                                 cornerRadius: 25.0, type: .customBackground)
                            .frame(height: getRelativeHeight(50.0))
                        PagerView(content: {
                            PaymentPaypalView()
                            PaymentMastercardView()
                            PaymentPaypalView()
                        }, tabIndex: $paymentPaypalTabContainerViewModel.selectedWalletoptionIndex,
                        pagers: $paymentPaypalTabContainerViewModel.tabWalletoptionList)
                            .frame(height: getRelativeHeight(305.0), alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .center)
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct PaymentPaypalTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentPaypalTabContainerView()
    }
}
