import SwiftUI

struct ReviewEmptyView: View {
    @StateObject var reviewEmptyViewModel = ReviewEmptyViewModel()
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
                        Text(StringConstants.kMsgTransactionRev)
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
                            HStack {
                                ZStack(alignment: .leading) {
                                    Image("img_shape_140x168_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(168.0),
                                               height: getRelativeHeight(140.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                                   bottomLeft: 18.0,
                                                                   bottomRight: 18.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Button(action: {}, label: {
                                            Image("img_location_red_a200")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
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
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                        .padding(.top, getRelativeHeight(74.0))
                                    }
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(124.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                    .padding(.trailing, getRelativeWidth(86.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        Image("img_location_9x9")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeWidth(9.0),
                                                   alignment: .center)
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
                                    HStack {
                                        Image("img_")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .center)
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
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(80.0), alignment: .bottom)
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(9.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(156.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.trailing)
                            Text(StringConstants.kLblPeriod)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(59.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(34.0))
                            HStack {
                                HStack {
                                    Spacer()
                                    Image("img_calendar")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .padding(.leading, getRelativeWidth(16.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    TextField(StringConstants.kLblCheckIn2,
                                              text: $reviewEmptyViewModel.formdateemptyText)
                                        .font(FontScheme
                                            .kRalewayRomanMedium(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.Indigo200)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                HStack {
                                    Spacer()
                                    Image("img_calendar")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .padding(.leading, getRelativeWidth(16.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    TextField(StringConstants.kLblCheckOut2,
                                              text: $reviewEmptyViewModel.formdateemptyoneText)
                                        .font(FontScheme
                                            .kRalewayRomanMedium(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.Indigo200)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.leading, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(23.0))
                            Text(StringConstants.kLblNoteForOwner)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(34.0))
                            HStack {
                                Spacer()
                                Image("img_file")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                TextField(StringConstants.kMsgWriteYourNote,
                                          text: $reviewEmptyViewModel.formtextemptyText)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Indigo200)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                            Text(StringConstants.kLblPaymentMethod)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(154.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(36.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            ColumncheckmarkCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(17.0))
                            HStack {
                                Text(StringConstants.kLblHaveAVoucher)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(149.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblClickInHere)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.IndigoA400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(7.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(34.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                            Image("image_not_found")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(58.0))
                                .padding(.leading, getRelativeWidth(114.0))
                        }
                        .frame(width: getRelativeWidth(351.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(24.0))
                    }
                    Button(action: {
                        reviewEmptyViewModel.isReviewSelectVoucherViewShow = true
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
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if reviewEmptyViewModel.isReviewSelectVoucherViewShow {
                BottomSheetView(isOpen: $reviewEmptyViewModel.isReviewSelectVoucherViewShow,
                                content: {
                                    ReviewSelectVoucherView(reviewSelectVoucherViewModel: ReviewSelectVoucherViewModel(_isOpen: $reviewEmptyViewModel
                                            .isReviewSelectVoucherViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct ReviewEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewEmptyView()
    }
}
