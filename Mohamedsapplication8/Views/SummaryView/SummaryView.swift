import SwiftUI

struct SummaryView: View {
    @StateObject var summaryViewModel = SummaryViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
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
                        Text(StringConstants.kMsgTransactionSum)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack(alignment: .leading) {
                                Image("img_shape_140x168_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(140.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                               bottomLeft: 18.0, bottomRight: 18.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Button(action: {}, label: {
                                        Image("img_location_red_a200")
                                    })
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700C6))
                                    HStack {
                                        Image("img_buttoncategory")
                                            .resizable()
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblApartment)
                                            .font(FontScheme
                                                .kRalewayMedium(size: getRelativeHeight(8.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(6.0))
                                    }
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(25.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.BlueGray700Af))
                                    .padding(.top, getRelativeHeight(74.0))
                                }
                                .frame(width: getRelativeWidth(74.0),
                                       height: getRelativeHeight(124.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(8.0))
                                .padding(.trailing, getRelativeWidth(86.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(140.0),
                                   alignment: .center)
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgSkyDandelions)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(93.0),
                                           height: getRelativeHeight(35.0), alignment: .topLeading)
                                HStack {
                                    Image("img_location_deep_orange_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(9.0),
                                               height: getRelativeWidth(9.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kMsgJakartaIndone)
                                        .font(FontScheme
                                            .kRalewayRegular(size: getRelativeHeight(8.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(10.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(6.0))
                                HStack {
                                    Image("img_")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15.0),
                                               height: getRelativeHeight(18.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblRent)
                                        .font(FontScheme
                                            .kRalewayMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(23.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(50.0), alignment: .trailing)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(20.0))
                            }
                            .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(122.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.bottom, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(156.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLblPaymentDetail)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(36.0))
                        VStack {
                            HStack {
                                Text(StringConstants.kLblPeriodTime)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl2Month)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(15.0),
                                   alignment: .center)
                            HStack {
                                Text(StringConstants.kLblMonthlyPayment)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl220)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(35.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(15.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            HStack {
                                Text(StringConstants.kLblDiscount)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl88)
                                    .font(FontScheme
                                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(15.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(123.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                            .stroke(ColorConstants.BlueGray50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                            .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(17.0))
                        HStack {
                            Text(StringConstants.kLblTotal)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl352)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(bottomLeft: 25.0, bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                        HStack {
                            Text(StringConstants.kLblPaymentMethod)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(154.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblChange)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.IndigoA400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(36.0))
                        HStack {
                            Image("img_reply")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgAnEmail)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                bottomRight: 25.0)
                                .stroke(ColorConstants.BlueGray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(17.0))
                        Image("img_progressbargradient")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(62.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(641.0),
                           alignment: .center)
                    Button(action: {
                        summaryViewModel.isSummaryChangePaymentViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblPayRent)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(132.0))
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
                                .padding(.bottom, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.bottom, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if summaryViewModel.isSummaryChangePaymentViewShow {
                BottomSheetView(isOpen: $summaryViewModel.isSummaryChangePaymentViewShow, content: {
                    SummaryChangePaymentView(summaryChangePaymentViewModel: SummaryChangePaymentViewModel(_isOpen: $summaryViewModel
                            .isSummaryChangePaymentViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
