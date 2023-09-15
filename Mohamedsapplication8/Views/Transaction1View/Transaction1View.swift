import SwiftUI

struct Transaction1View: View {
    @StateObject var transaction1ViewModel = Transaction1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    HStack {
                        Text(StringConstants.kLbl23)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                        Text(StringConstants.kLblTransactions)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(5.0))
                        Text("Group6682")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(40.0))
                        HStack {
                            ZStack {
                                Image("img_user")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                            Image("img_television_12x12")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.Gray100))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .center) {
                                Image("img_shape_160x144_5")
                                    .resizable()
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(160.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                               bottomLeft: 15.0, bottomRight: 15.0))
                                VStack(alignment: .trailing, spacing: 0) {
                                    Button(action: {}, label: {
                                        Image("img_location_red_a200")
                                    })
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700C6))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_buttoncategory")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                        Spacer()
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblRent)
                                                    .font(FontScheme
                                                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, getRelativeWidth(8.0))
                                                    .padding(.vertical, getRelativeHeight(5.0))
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(46.0),
                                                           height: getRelativeHeight(25.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 8.0,
                                                                               topRight: 8.0,
                                                                               bottomLeft: 8.0,
                                                                               bottomRight: 8.0)
                                                            .fill(ColorConstants.BlueGray700Af))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                    }
                                    .frame(width: getRelativeWidth(128.0),
                                           height: getRelativeHeight(25.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(94.0))
                                }
                                .frame(width: getRelativeWidth(128.0),
                                       height: getRelativeHeight(144.0), alignment: .center)
                                .padding(.all, getRelativeWidth(8.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(8.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(160.0),
                                   alignment: .leading)
                            Text(StringConstants.kLblWingsTower)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(78.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(8.0))
                            HStack {
                                Image("img_clock_9x9")
                                    .resizable()
                                    .frame(width: getRelativeWidth(9.0),
                                           height: getRelativeWidth(9.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblNovember)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                Text(StringConstants.kLbl212021)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(231.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .center) {
                                Image("img_shape_160x144_9")
                                    .resizable()
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(160.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                               bottomLeft: 15.0, bottomRight: 15.0))
                                VStack(alignment: .trailing, spacing: 0) {
                                    Button(action: {}, label: {
                                        Image("img_location_red_a200")
                                    })
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700C6))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_buttoncategory_25x25")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                        Spacer()
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblRent)
                                                    .font(FontScheme
                                                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, getRelativeWidth(8.0))
                                                    .padding(.vertical, getRelativeHeight(5.0))
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(46.0),
                                                           height: getRelativeHeight(25.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 8.0,
                                                                               topRight: 8.0,
                                                                               bottomLeft: 8.0,
                                                                               bottomRight: 8.0)
                                                            .fill(ColorConstants.BlueGray700Af))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                    }
                                    .frame(width: getRelativeWidth(128.0),
                                           height: getRelativeHeight(25.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(94.0))
                                }
                                .frame(width: getRelativeWidth(128.0),
                                       height: getRelativeHeight(144.0), alignment: .center)
                                .padding(.all, getRelativeWidth(8.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(8.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(160.0),
                                   alignment: .leading)
                            Text(StringConstants.kMsgBridgelandMode)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(8.0))
                            HStack {
                                Image("img_clock_9x9")
                                    .resizable()
                                    .frame(width: getRelativeWidth(9.0),
                                           height: getRelativeWidth(9.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblDecember)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                Text(StringConstants.kLbl172021)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(27.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(231.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(231.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(291.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct Transaction1View_Previews: PreviewProvider {
    static var previews: some View {
        Transaction1View()
    }
}
