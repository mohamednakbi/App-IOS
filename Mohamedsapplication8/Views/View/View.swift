import SwiftUI

struct View: View {
    @StateObject var viewModel = ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                        .fill(ColorConstants.WhiteA700Cc))
                .padding(.leading, getRelativeWidth(15.0))
                ZStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            Image("img_rewind")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(11.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(83.0),
                               alignment: .center)
                        .background(RoundedCorners(topRight: 18.0, bottomRight: 18.0)
                            .fill(ColorConstants.WhiteA7003f))
                        Spacer()
                        ZStack {
                            Image("img_rewind_22x22")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(11.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(83.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 18.0, bottomLeft: 18.0)
                            .fill(ColorConstants.WhiteA7003f))
                    }
                    .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(83.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(197.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA7003f))
                        .padding(.trailing)
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA7003f))
                        .padding(.top, getRelativeHeight(95.0))
                        HStack {
                            VStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.IndigoA400))
                            }
                            .frame(width: getRelativeWidth(35.0), height: getRelativeWidth(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 17.0, topRight: 17.0,
                                                       bottomLeft: 17.0, bottomRight: 17.0)
                                    .fill(ColorConstants.WhiteA700Cc))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgJatiDiningTab)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(93.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Text(StringConstants.kMsg2PeopleCapaci)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(54.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.WhiteA700Cc))
                            .padding(.leading, getRelativeWidth(7.0))
                        }
                        .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(44.0))
                        .padding(.leading, getRelativeWidth(57.0))
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA7003f))
                        .padding(.top, getRelativeHeight(112.0))
                    }
                    .frame(width: getRelativeWidth(287.0), height: getRelativeHeight(365.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(14.0))
                    .padding(.trailing, getRelativeWidth(54.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(365.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(94.0))
                HStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLivingRoom)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(24.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(122.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.BlueGray700Af))
                        }
                    })
                    .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.BlueGray700Af))
                    Spacer()
                    Button(action: {}, label: {
                        Image("img_volume_50x50")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700Cc))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(72.0))
                .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(668.0),
                   alignment: .center)
            HStack {
                ZStack(alignment: .leading) {
                    Image("img_shape_160x144_8")
                        .resizable()
                        .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(104.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                                   bottomRight: 15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Button(action: {}, label: {
                            Image("img_location_red_a200")
                        })
                        .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700C6))
                        HStack {
                            Image("img_buttoncategory")
                                .resizable()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblApartment)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(8.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(10.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.BlueGray700Af))
                        .padding(.top, getRelativeHeight(38.0))
                    }
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(88.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(8.0))
                    .padding(.trailing, getRelativeWidth(86.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(104.0),
                       alignment: .center)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgSkyDandelions)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(35.0),
                               alignment: .topLeading)
                    HStack {
                        Image("img_star_1")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLbl49)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(8.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(10.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
                    HStack {
                        Image("img_location_deep_orange_a200")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(9.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgJakartaIndone)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(10.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(77.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                }
                .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(69.0),
                       alignment: .top)
                .padding(.leading, getRelativeWidth(16.0))
                .padding(.trailing, getRelativeWidth(33.0))
            }
            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(120.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.WhiteA700Cc))
            .padding(.horizontal, getRelativeWidth(24.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Image("img_360view")
            .resizable()
            .scaledToFill())
        .hideNavigationBar()
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        View()
    }
}
