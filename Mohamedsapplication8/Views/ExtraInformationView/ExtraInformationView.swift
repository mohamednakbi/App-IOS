import SwiftUI

struct ExtraInformationView: View {
    @StateObject var extraInformationViewModel = ExtraInformationViewModel()
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
                        Text(StringConstants.kLblAddListing)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Text(StringConstants.kMsgAlmostFinish)
                                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(297.0),
                                           height: getRelativeHeight(76.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblSellPrice)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(33.0))
                                HStack {
                                    TextField(StringConstants.kLbl180000,
                                              text: $extraInformationViewModel.priceText)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .padding()
                                    Image("img_alarm")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                                Text(StringConstants.kLblRentPrice)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(93.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(34.0))
                                HStack {
                                    TextField("",
                                              text: $extraInformationViewModel.formvaluefillText)
                                        .padding()
                                    Image("img_alarm")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(234.0),
                                           height: getRelativeHeight(51.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(15.0))
                                Text(StringConstants.kMsgPropertyFeatur)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(38.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                FormSpinnerCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(327.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            }
                            Group {
                                Text(StringConstants.kLblTotalRooms)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(107.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(34.0))
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(347.0),
                                           height: getRelativeHeight(51.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(19.0))
                                Text(StringConstants.kMsgEnvironmentF)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(208.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(36.0))
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(317.0),
                                           height: getRelativeHeight(171.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(19.0))
                                Image("img_progressbargradient")
                                    .resizable()
                                    .frame(width: getRelativeWidth(100.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(49.0))
                                    .padding(.leading, getRelativeWidth(114.0))
                            }
                        }
                        .frame(width: getRelativeWidth(347.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(4.0))
                    }
                    Button(action: {
                        extraInformationViewModel.isExtraInformationSuccessViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblFinish)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(141.0))
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
                                .padding(.horizontal, getRelativeWidth(25.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.horizontal, getRelativeWidth(25.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if extraInformationViewModel.isExtraInformationSuccessViewShow {
                BottomSheetView(isOpen: $extraInformationViewModel
                    .isExtraInformationSuccessViewShow,
                    content: {
                        ExtraInformationSuccessView(extraInformationSuccessViewModel: ExtraInformationSuccessViewModel(_isOpen: $extraInformationViewModel
                                .isExtraInformationSuccessViewShow))
                    }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct ExtraInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraInformationView()
    }
}
