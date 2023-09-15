import SwiftUI

struct FilterFullView: View {
    @StateObject var filterFullViewModel = FilterFullViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Group {
                    Divider()
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .background(ColorConstants.BlueGray600)
                    HStack {
                        Text(StringConstants.kLblFilter)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.bottom, getRelativeHeight(14.0))
                        Spacer()
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblReset)
                                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(19.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.RedA200))
                            }
                        })
                        .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.RedA200))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(32.0))
                    HStack {
                        Text(StringConstants.kLblLocation2)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Image("img_group_red_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(159.0))
                    HStack {
                        Spacer()
                        Image("img_location_deep_orange_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.bottom, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                        TextField(StringConstants.kLblSemarang,
                                  text: $filterFullViewModel.formlocation)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .padding()
                        Image("img_search_20x20")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(19.0))
                    ZStack(alignment: .center) {
                        GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                                      locationEnable: .constant(true))
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(200.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0))
                        VStack {
                            Text(StringConstants.kLblSelectOnMap)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(85.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA7007f)
                        .padding(.top, getRelativeHeight(150.0))
                        ZStack(alignment: .center) {
                            ZStack(alignment: .center) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                               bottomLeft: 15.0, bottomRight: 15.0)
                                            .fill(ColorConstants.Orange30067))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(8.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.Orange30087))
                                    .padding(.top, getRelativeHeight(4.91))
                                    .padding(.bottom, getRelativeHeight(5.09))
                                    .padding(.horizontal, getRelativeWidth(8.5))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(32.57))
                            .padding(.horizontal, getRelativeWidth(1.21))
                            ZStack(alignment: .center) {
                                Image("img_location_4")
                                    .resizable()
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(43.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                               bottomLeft: 3.0, bottomRight: 3.0))
                                Image("img_vector_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(29.0),
                                           height: getRelativeWidth(29.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(11.54))
                                    .padding(.horizontal, getRelativeWidth(2.43))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(43.0),
                                   alignment: .center)
                            .padding(.bottom, getRelativeHeight(8.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(51.0),
                               alignment: .topTrailing)
                        .padding(.bottom, getRelativeHeight(104.06))
                        .padding(.leading, getRelativeWidth(161.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(200.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0))
                    .padding(.top, getRelativeHeight(15.0))
                    Text(StringConstants.kLblSellType)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(77.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(36.0))
                    Text("chipview")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(194.0), height: getRelativeHeight(51.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(17.0))
                    HStack {
                        Text(StringConstants.kLblPrice)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Image("img_group_red_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(33.0))
                }
                Group {
                    HStack {
                        HStack {
                            Image("img_alarm_20x20")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl150)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(20.0))
                        }
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        Spacer()
                        Image("img_maximize")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(25.0))
                        Spacer()
                        HStack {
                            Image("img_alarm_20x20")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl350)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(23.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(20.0))
                        }
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    Text(StringConstants.kMsgEnvironmentF)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(208.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(163.0))
                    Text("chipviewOne")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(171.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(19.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblApplyFilter)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(116.0))
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
                                .padding(.top, getRelativeHeight(38.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.top, getRelativeHeight(38.0))
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                   alignment: .topLeading)
            .background(RoundedCorners(topLeft: 50.0, topRight: 50.0)
                .fill(ColorConstants.WhiteA700))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct FilterFullView_Previews: PreviewProvider {
    static var previews: some View {
        FilterFullView()
    }
}
