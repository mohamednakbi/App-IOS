import SwiftUI

struct PromotionView: View {
    @StateObject var promotionViewModel = PromotionViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrowleft")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.leading, getRelativeWidth(24.0))
                    Button(action: {}, label: {
                        Image("img_upload_50x50")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .bottomTrailing) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgHalloweenSale)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                            Text(StringConstants.kMsgAllDiscountUp)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(103.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(63.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(102.54))
                        .padding(.trailing, getRelativeWidth(202.0))
                        Image("img_subtract_145x207")
                            .resizable()
                            .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(164.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(35.0))
                            .padding(.leading, getRelativeWidth(120.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(200.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.top, getRelativeHeight(32.0))
                    Text(StringConstants.kMsgLimitedTimeHa)
                        .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(25.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(75.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(60.0))
                    HStack {
                        Image("img_calendar_9x9")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgOctober27202)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(10.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.leading, getRelativeWidth(24.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_ticket_53x53")
                        })
                        .frame(width: getRelativeWidth(53.0), height: getRelativeWidth(53.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.GreenA400))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblHlwn40)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(88.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Text(StringConstants.kMsgUseThisCoupon)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(9.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(223.0),
                                       height: getRelativeHeight(11.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.bottom, getRelativeHeight(7.0))
                        .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(85.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .GreenA40063,
                                    ColorConstants
                                        .TealA70063]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    .padding(.top, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    ZStack(alignment: .center) {
                        Text(StringConstants.kMsgLoremIpsumDol7)
                            .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(237.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        VStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblStartExplore)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.trailing, getRelativeWidth(113.0))
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
                                        .padding(.top, getRelativeHeight(65.0))
                                }
                            })
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                       bottomLeft: 35.0, bottomRight: 35.0)
                                    .fill(ColorConstants.IndigoA400))
                            .padding(.top, getRelativeHeight(65.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(183.0),
                               alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                    .WhiteA700,
                                ColorConstants
                                    .WhiteA70000]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                        .padding(.top, getRelativeHeight(62.76))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(245.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(27.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(735.0),
                       alignment: .center)
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

struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView()
    }
}
