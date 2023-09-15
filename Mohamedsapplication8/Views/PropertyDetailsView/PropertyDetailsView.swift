import SwiftUI

struct PropertyDetailsView: View {
    @StateObject var propertyDetailsViewModel = PropertyDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                Group {
                                    ZStack(alignment: .center) {
                                        Image("img_shape_520x375")
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(520.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(4.0))
                                        ZStack(alignment: .center) {
                                            Image("img_shape_518x375")
                                                .resizable()
                                                .frame(width: UIScreen.main.bounds.width,
                                                       height: getRelativeHeight(518.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            VStack(alignment: .trailing, spacing: 0) {
                                                HStack {
                                                    Button(action: {
                                                        self.presentationMode.wrappedValue.dismiss()
                                                    }, label: {
                                                        Image("img_arrowleft")
                                                    })
                                                    .background(RoundedCorners(topLeft: 25.0,
                                                                               topRight: 25.0,
                                                                               bottomLeft: 25.0,
                                                                               bottomRight: 25.0)
                                                            .fill(ColorConstants.WhiteA700Cc))
                                                    .padding(.leading, getRelativeWidth(24.0))
                                                    HStack {
                                                        Button(action: {}, label: {
                                                            Image("img_upload_50x50")
                                                        })
                                                        .frame(width: getRelativeWidth(50.0),
                                                               height: getRelativeWidth(50.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 25.0,
                                                                                   topRight: 25.0,
                                                                                   bottomLeft: 25.0,
                                                                                   bottomRight: 25.0)
                                                                .fill(ColorConstants.Gray100))
                                                        Button(action: {}, label: {
                                                            Image("img_favorite_white_a700")
                                                        })
                                                        .frame(width: getRelativeWidth(50.0),
                                                               height: getRelativeWidth(50.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 25.0,
                                                                                   topRight: 25.0,
                                                                                   bottomLeft: 25.0,
                                                                                   bottomRight: 25.0)
                                                                .fill(ColorConstants.RedA200))
                                                        .padding(.leading, getRelativeWidth(15.0))
                                                    }
                                                    .frame(width: getRelativeWidth(115.0),
                                                           height: getRelativeHeight(50.0),
                                                           alignment: .leading)
                                                    .padding(.horizontal, getRelativeWidth(24.0))
                                                }
                                                .frame(width: UIScreen.main.bounds.width - 20,
                                                       height: getRelativeHeight(50.0),
                                                       alignment: .leading)
                                                Image("img_shape_60x60_1")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(60.0),
                                                           height: getRelativeWidth(60.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 18.0,
                                                                               topRight: 18.0,
                                                                               bottomLeft: 18.0,
                                                                               bottomRight: 18.0))
                                                    .padding(.top, getRelativeHeight(231.0))
                                                Image("img_shape_60x60_2")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(60.0),
                                                           height: getRelativeWidth(60.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 18.0,
                                                                               topRight: 18.0,
                                                                               bottomLeft: 18.0,
                                                                               bottomRight: 18.0))
                                                    .padding(.top, getRelativeHeight(5.0))
                                                HStack {
                                                    HStack {
                                                        Image("img_text_13")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(15.0),
                                                                   height: getRelativeHeight(18.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                        Text(StringConstants.kLbl49)
                                                            .font(FontScheme
                                                                .kMontserratBold(size: getRelativeHeight(14.0)))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(ColorConstants
                                                                .WhiteA700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(24.0),
                                                                   height: getRelativeHeight(18.0),
                                                                   alignment: .topLeading)
                                                            .padding(.leading,
                                                                     getRelativeWidth(8.0))
                                                    }
                                                    .frame(width: getRelativeWidth(95.0),
                                                           height: getRelativeHeight(50.0),
                                                           alignment: .bottom)
                                                    .background(RoundedCorners(topLeft: 25.0,
                                                                               topRight: 25.0,
                                                                               bottomLeft: 25.0,
                                                                               bottomRight: 25.0)
                                                            .fill(ColorConstants.Lime900Aa))
                                                    .padding(.top, getRelativeHeight(10.0))
                                                    HStack {
                                                        Image("img_buttoncategory")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(15.0),
                                                                   height: getRelativeHeight(18.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                        Text(StringConstants.kLblApartment)
                                                            .font(FontScheme
                                                                .kRalewayMedium(size: getRelativeHeight(10.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .WhiteA700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(53.0),
                                                                   height: getRelativeHeight(12.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(4.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(8.0))
                                                    }
                                                    .frame(width: getRelativeWidth(124.0),
                                                           height: getRelativeHeight(50.0),
                                                           alignment: .bottom)
                                                    .background(RoundedCorners(topLeft: 25.0,
                                                                               topRight: 25.0,
                                                                               bottomLeft: 25.0,
                                                                               bottomRight: 25.0)
                                                            .fill(ColorConstants.BlueGray700A3))
                                                    .padding(.top, getRelativeHeight(10.0))
                                                    .padding(.leading, getRelativeWidth(6.0))
                                                    ZStack(alignment: .center) {
                                                        Image("img_shape_60x60_3")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(60.0),
                                                                   height: getRelativeWidth(60.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .background(RoundedCorners(topLeft: 18.0,
                                                                                       topRight: 18.0,
                                                                                       bottomLeft: 18.0,
                                                                                       bottomRight: 18.0))
                                                        Text(StringConstants.kLbl34)
                                                            .font(FontScheme
                                                                .kMontserratMedium(size: getRelativeHeight(18.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .BlueGray50)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(21.0),
                                                                   height: getRelativeHeight(22.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(18.77))
                                                            .padding(.bottom,
                                                                     getRelativeHeight(19.23))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(20.0))
                                                    }
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(60.0),
                                                           height: getRelativeWidth(60.0),
                                                           alignment: .center)
                                                    .padding(.leading, getRelativeWidth(42.0))
                                                }
                                                .frame(width: getRelativeWidth(327.0),
                                                       height: getRelativeHeight(60.0),
                                                       alignment: .trailing)
                                                .padding(.top, getRelativeHeight(5.0))
                                            }
                                            .frame(width: getRelativeWidth(327.0),
                                                   height: getRelativeHeight(471.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(23.0))
                                            .padding(.bottom, getRelativeHeight(24.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(518.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(6.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(524.0), alignment: .center)
                                    HStack {
                                        Text(StringConstants.kLblWingsTower)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(25.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(155.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLbl220)
                                            .font(FontScheme
                                                .kMontserratSemiBold(size: getRelativeHeight(25.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(69.0),
                                                   height: getRelativeHeight(31.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(32.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    HStack {
                                        Image("img_location_9x9")
                                            .resizable()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeWidth(12.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kMsgJakartaIndone)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.BlueGray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(100.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                        Text("Group6941")
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(152.0),
                                                   height: getRelativeHeight(15.0))
                                        Text(StringConstants.kLblPerMonth)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.BlueGray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    HStack {
                                        Text("chipviewlayout")
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(194.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .center)
                                        Spacer()
                                        Button(action: {
                                            propertyDetailsViewModel.nextScreen = "View"
                                        }, label: {
                                            Image("img_location_7")
                                        })
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(ColorConstants.Gray100))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(328.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.BlueGray50)
                                        .padding(.top, getRelativeHeight(20.0))
                                        .padding(.horizontal, getRelativeWidth(23.0))
                                    HStack {
                                        Image("img_shape_53x53_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(53.0),
                                                   height: getRelativeWidth(53.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .background(RoundedCorners(topLeft: 26.0,
                                                                       topRight: 26.0,
                                                                       bottomLeft: 26.0,
                                                                       bottomRight: 26.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblAnderson)
                                                .font(FontScheme
                                                    .kRalewayBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.BlueGray80001)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(68.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kMsgRealEstateAge)
                                                .font(FontScheme
                                                    .kRalewayRegular(size: getRelativeHeight(9.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.BlueGray600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(78.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(78.0),
                                               height: getRelativeHeight(30.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(16.0))
                                        Text("Group6942")
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(20.0))
                                        Image("img_volume_50x50")
                                            .resizable()
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeWidth(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.trailing, getRelativeWidth(8.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(85.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 2, id: \.self) { index in
                                                    Layout5Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(20.0))
                                    Text(StringConstants.kMsgLocationPubl)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(246.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(37.0))
                                        .padding(.leading, getRelativeWidth(24.0))
                                }
                                Group {
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_location_50x50")
                                        })
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                bottomLeft: 25.0, bottomRight: 25.0)
                                                .stroke(ColorConstants.Gray100,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(ColorConstants.Gray100))
                                        Text(StringConstants.kMsgStCikokoTimu)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.BlueGray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(232.0),
                                                   height: getRelativeHeight(36.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(15.0))
                                    }
                                    .frame(width: getRelativeWidth(297.0),
                                           height: getRelativeHeight(50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(25.0))
                                    .padding(.trailing, getRelativeWidth(53.0))
                                    Picker("Options",
                                           selection: $propertyDetailsViewModel
                                               .formlayoutrangePicker1) {
                                        ForEach(propertyDetailsViewModel
                                            .formlayoutrangePicker1Values,
                                            id: \.self) { value in
                                                Text(value)
                                            }
                                            .onTapGesture {
                                                propertyDetailsViewModel
                                                    .isLocationDistanceViewShow = true
                                            }
                                    }
                                    .pickerStyle(MenuPickerStyle())
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 2, id: \.self) { index in
                                                    Layout6Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(15.0))
                                    ZStack(alignment: .center) {
                                        GoogleMapView(zoomEnable: .constant(true),
                                                      defaultZoomLevel: .constant(5.0),
                                                      locationEnable: .constant(true))
                                            .frame(width: getRelativeWidth(327.0),
                                                   height: getRelativeHeight(235.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 25.0,
                                                                       topRight: 25.0,
                                                                       bottomLeft: 25.0,
                                                                       bottomRight: 25.0))
                                            .onTapGesture {
                                                propertyDetailsViewModel
                                                    .nextScreen = "ViewonMapView"
                                            }
                                        VStack {
                                            Text(StringConstants.kLblViewAllOnMap)
                                                .font(FontScheme
                                                    .kRalewayRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.BlueGray80001)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(94.0),
                                                       height: getRelativeHeight(15.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(50.0), alignment: .center)
                                        .background(ColorConstants.WhiteA7007f)
                                        .padding(.top, getRelativeHeight(185.0))
                                        ZStack(alignment: .center) {
                                            ZStack(alignment: .center) {
                                                ZStack(alignment: .center) {
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(31.0),
                                                               height: getRelativeHeight(18.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 15.0,
                                                                                   topRight: 15.0,
                                                                                   bottomLeft: 15.0,
                                                                                   bottomRight: 15.0)
                                                                .fill(ColorConstants.Orange30067))
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeHeight(8.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 7.0,
                                                                                   topRight: 7.0,
                                                                                   bottomLeft: 7.0,
                                                                                   bottomRight: 7.0)
                                                                .fill(ColorConstants.Orange30087))
                                                        .padding(.top, getRelativeHeight(4.91))
                                                        .padding(.bottom, getRelativeHeight(5.09))
                                                        .padding(.horizontal, getRelativeWidth(8.5))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(31.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(32.57))
                                                .padding(.horizontal, getRelativeWidth(1.21))
                                                ZStack(alignment: .center) {
                                                    Image("img_location_4")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(34.0),
                                                               height: getRelativeHeight(43.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .background(RoundedCorners(topLeft: 3.0,
                                                                                   topRight: 3.0,
                                                                                   bottomLeft: 3.0,
                                                                                   bottomRight: 3.0))
                                                    Image("img_vector_1")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(29.0),
                                                               height: getRelativeWidth(29.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(11.54))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(2.43))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(34.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .center)
                                                .padding(.bottom, getRelativeHeight(8.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(51.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(62.0))
                                            .padding(.trailing, getRelativeWidth(122.0))
                                            Image("img_vector7")
                                                .resizable()
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeHeight(71.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 2.0,
                                                                           topRight: 2.0,
                                                                           bottomLeft: 2.0,
                                                                           bottomRight: 2.0))
                                                .padding(.top, getRelativeHeight(42.5))
                                                .padding(.horizontal, getRelativeWidth(17.0))
                                            ZStack(alignment: .center) {
                                                ZStack(alignment: .center) {
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(31.0),
                                                               height: getRelativeHeight(18.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 15.0,
                                                                                   topRight: 15.0,
                                                                                   bottomLeft: 15.0,
                                                                                   bottomRight: 15.0)
                                                                .fill(ColorConstants.IndigoA40067))
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(14.0),
                                                               height: getRelativeHeight(8.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 7.0,
                                                                                   topRight: 7.0,
                                                                                   bottomLeft: 7.0,
                                                                                   bottomRight: 7.0)
                                                                .fill(ColorConstants.IndigoA40081))
                                                        .padding(.top, getRelativeHeight(4.91))
                                                        .padding(.bottom, getRelativeHeight(5.09))
                                                        .padding(.horizontal, getRelativeWidth(8.5))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(31.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .center)
                                                .padding(.top, getRelativeHeight(32.57))
                                                .padding(.horizontal, getRelativeWidth(1.21))
                                                ZStack(alignment: .center) {
                                                    Image("img_location_43x34")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(34.0),
                                                               height: getRelativeHeight(43.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .background(RoundedCorners(topLeft: 3.0,
                                                                                   topRight: 3.0,
                                                                                   bottomLeft: 3.0,
                                                                                   bottomRight: 3.0))
                                                    Image("img_shape_19")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(29.0),
                                                               height: getRelativeWidth(29.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.bottom, getRelativeHeight(11.54))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(2.43))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(34.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .center)
                                                .padding(.bottom, getRelativeHeight(8.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(51.0),
                                                   alignment: .bottomTrailing)
                                            .padding(.top, getRelativeHeight(47.0))
                                            .padding(.leading, getRelativeWidth(122.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(156.0),
                                               height: getRelativeHeight(113.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(81.0))
                                        .padding(.trailing, getRelativeWidth(107.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(235.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0))
                                    .padding(.top, getRelativeHeight(15.0))
                                    HStack {
                                        Text(StringConstants.kLblCostOfLiving)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(124.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblViewDetails)
                                            .font(FontScheme
                                                .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.DeepPurpleA200)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(60.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(8.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(22.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(36.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_text_14")
                                        })
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeWidth(53.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0,
                                                                   bottomLeft: 17.0,
                                                                   bottomRight: 17.0)
                                                .fill(ColorConstants.BlueGray50))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLbl830Month)
                                                .font(FontScheme
                                                    .kMontserratBold(size: getRelativeHeight(18.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.BlueGray80001)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(97.0),
                                                       height: getRelativeHeight(22.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kMsgFromAverageC)
                                                .font(FontScheme
                                                    .kRalewayRegular(size: getRelativeHeight(9.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.BlueGray600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(215.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(4.0))
                                        }
                                        .frame(width: getRelativeWidth(215.0),
                                               height: getRelativeHeight(37.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(16.0))
                                        .padding(.trailing, getRelativeWidth(11.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(85.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    Text(StringConstants.kLblReviews)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(75.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(40.0))
                                        .padding(.leading, getRelativeWidth(24.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_text_13")
                                        })
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeWidth(53.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0,
                                                                   bottomLeft: 17.0,
                                                                   bottomRight: 17.0)
                                                .fill(ColorConstants.DeepOrangeA20026))
                                        VStack(alignment: .leading, spacing: 0) {
                                            HStack {
                                                RatingBarView(selected: $propertyDetailsViewModel
                                                    .ratingbarRating,
                                                    heightWeightImage: getRelativeWidth(12.0))
                                                    .frame(width: getRelativeWidth(68.0),
                                                           height: getRelativeHeight(12.0),
                                                           alignment: .center)
                                                Text(StringConstants.kLbl49)
                                                    .font(FontScheme
                                                        .kMontserratBold(size: getRelativeHeight(18.0)))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(ColorConstants.BlueGray80001)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(31.0),
                                                           height: getRelativeHeight(22.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(6.0))
                                            }
                                            .frame(width: getRelativeWidth(105.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .leading)
                                            HStack {
                                                Text(StringConstants.kLblFrom)
                                                    .font(FontScheme
                                                        .kRalewayRegular(size: getRelativeHeight(9.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.BlueGray600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(22.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLbl112)
                                                    .font(FontScheme
                                                        .kMontserratRegular(size: getRelativeHeight(9.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.BlueGray600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(12.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLblReviewers)
                                                    .font(FontScheme
                                                        .kRalewayRegular(size: getRelativeHeight(9.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.BlueGray600)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(43.0),
                                                           height: getRelativeHeight(11.0),
                                                           alignment: .topLeading)
                                            }
                                            .frame(width: getRelativeWidth(85.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .leading)
                                        }
                                        .frame(width: getRelativeWidth(105.0),
                                               height: getRelativeHeight(36.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(7.0))
                                        .padding(.leading, getRelativeWidth(16.0))
                                        Text("Group6943")
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(51.0),
                                                   height: getRelativeHeight(30.0))
                                        ZStack(alignment: .center) {
                                            Image("img_shape_30x30_2")
                                                .resizable()
                                                .frame(width: getRelativeWidth(30.0),
                                                       height: getRelativeWidth(30.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipShape(Circle())
                                                .clipShape(Circle())
                                                .padding(.trailing, getRelativeWidth(40.0))
                                            Image("img_shape_30x30_3")
                                                .resizable()
                                                .frame(width: getRelativeWidth(30.0),
                                                       height: getRelativeWidth(30.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipShape(Circle())
                                                .clipShape(Circle())
                                                .padding(.horizontal, getRelativeWidth(20.0))
                                            Image("img_shape_30x30_4")
                                                .resizable()
                                                .frame(width: getRelativeWidth(30.0),
                                                       height: getRelativeWidth(30.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipShape(Circle())
                                                .clipShape(Circle())
                                                .padding(.leading, getRelativeWidth(40.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(70.0),
                                               height: getRelativeHeight(30.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.bottom, getRelativeHeight(11.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(85.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Red50))
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                }
                                Group {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Layout7Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(327.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(20.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    Button(action: {
                                        propertyDetailsViewModel.nextScreen = "Reviews1View"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kMsgViewAllReview)
                                                .font(FontScheme
                                                    .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.trailing, getRelativeWidth(99.0))
                                                .padding(.leading, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(15.0))
                                                .foregroundColor(ColorConstants.IndigoA400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(327.0),
                                                       height: getRelativeHeight(50.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.0,
                                                                           topRight: 25.0,
                                                                           bottomLeft: 25.0,
                                                                           bottomRight: 25.0)
                                                        .fill(ColorConstants.Gray100))
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.horizontal, getRelativeWidth(24.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    Text(StringConstants.kMsgNearbyFromThi)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(239.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(44.0))
                                        .padding(.leading, getRelativeWidth(24.0))
                                    ScrollView(.vertical, showsIndicators: false) {
                                        VStack {
                                            LazyVGrid(columns: [SwiftUI.GridItem()], spacing: 1.0) {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Rowshape7Cell()
                                                }
                                            }
                                        }
                                    }
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    .fixedSize(horizontal: false, vertical: false)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: ViewonMapView(),
                                       tag: "ViewonMapView",
                                       selection: $propertyDetailsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: Reviews1View(),
                                       tag: "Reviews1View",
                                       selection: $propertyDetailsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: View(),
                                       tag: "View",
                                       selection: $propertyDetailsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if propertyDetailsViewModel.isLocationDistanceViewShow {
                BottomSheetView(isOpen: $propertyDetailsViewModel.isLocationDistanceViewShow,
                                content: {
                                    LocationDistanceView(locationDistanceViewModel: LocationDistanceViewModel(_isOpen: $propertyDetailsViewModel
                                            .isLocationDistanceViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct PropertyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyDetailsView()
    }
}
