import SwiftUI

struct EditFormView: View {
    @StateObject var editFormViewModel = EditFormViewModel()
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
                        Text(StringConstants.kLblEditListing)
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
                                HStack {
                                    ZStack(alignment: .leading) {
                                        Image("img_shape_160x144_11")
                                            .resizable()
                                            .frame(width: getRelativeWidth(168.0),
                                                   height: getRelativeHeight(104.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Button(action: {}, label: {
                                                Image("img_location_red_a200")
                                            })
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.WhiteA700C6))
                                            HStack {
                                                Image("img_buttoncategory_1")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(11.0),
                                                           height: getRelativeHeight(13.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblHouse)
                                                    .font(FontScheme
                                                        .kRalewayMedium(size: getRelativeHeight(8.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(25.0),
                                                           height: getRelativeHeight(10.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(6.0))
                                                    .padding(.trailing, getRelativeWidth(17.0))
                                            }
                                            .frame(width: getRelativeWidth(74.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.BlueGray700Af))
                                            .padding(.top, getRelativeHeight(38.0))
                                        }
                                        .frame(width: getRelativeWidth(74.0),
                                               height: getRelativeHeight(88.0), alignment: .leading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                        .padding(.trailing, getRelativeWidth(86.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(104.0), alignment: .center)
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgSchoolviewHous)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(70.0),
                                                   height: getRelativeHeight(32.0),
                                                   alignment: .topLeading)
                                        HStack {
                                            Image("img_star_1")
                                                .resizable()
                                                .frame(width: getRelativeWidth(9.0),
                                                       height: getRelativeWidth(9.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLbl46)
                                                .font(FontScheme
                                                    .kMontserratBold(size: getRelativeHeight(8.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.BlueGray600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeHeight(10.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(9.0))
                                        HStack {
                                            Image("img_location_deep_orange_a200")
                                                .resizable()
                                                .frame(width: getRelativeWidth(9.0),
                                                       height: getRelativeWidth(9.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kMsgSemarangIndon)
                                                .font(FontScheme
                                                    .kRalewayRegular(size: getRelativeHeight(8.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.BlueGray600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(78.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(89.0),
                                               height: getRelativeHeight(10.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(89.0),
                                           height: getRelativeHeight(69.0), alignment: .top)
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(38.0))
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(120.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.trailing)
                                Text(StringConstants.kLblListingTitle)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(36.0))
                                HStack {
                                    TextField(StringConstants.kMsgSchoolviewHous,
                                              text: $editFormViewModel.formpasswordText)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .padding()
                                    Image("img_mail")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .cornerRadius(0.0)
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
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                Text(StringConstants.kLblListingType)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(107.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(36.0))
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(198.0),
                                           height: getRelativeHeight(51.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(17.0))
                                Text(StringConstants.kMsgPropertyCatego)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(165.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(35.0))
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(323.0),
                                           height: getRelativeHeight(114.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(17.0))
                                Text(StringConstants.kLblLocation2)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(33.0))
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
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                                    Text(StringConstants.kMsgJlGerungsari)
                                        .font(FontScheme
                                            .kRalewayRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(235.0),
                                               height: getRelativeHeight(37.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(300.0),
                                       height: getRelativeHeight(50.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(50.0))
                                ZStack(alignment: .center) {
                                    GoogleMapView(zoomEnable: .constant(true),
                                                  defaultZoomLevel: .constant(5.0),
                                                  locationEnable: .constant(true))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(200.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0))
                                    VStack {
                                        Text(StringConstants.kMsgSelectOnTheM)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(108.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(ColorConstants.WhiteA7007f)
                                    .padding(.top, getRelativeHeight(150.0))
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
                                               height: getRelativeHeight(18.0), alignment: .center)
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
                                            Image("img_shape_24")
                                                .resizable()
                                                .frame(width: getRelativeWidth(29.0),
                                                       height: getRelativeWidth(29.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.bottom, getRelativeHeight(11.54))
                                                .padding(.horizontal, getRelativeWidth(2.43))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(34.0),
                                               height: getRelativeHeight(43.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(8.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(51.0), alignment: .topTrailing)
                                    .padding(.bottom, getRelativeHeight(109.0))
                                    .padding(.leading, getRelativeWidth(175.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(200.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0))
                                .padding(.top, getRelativeHeight(20.0))
                                Text(StringConstants.kLblListingPhotos)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(129.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(36.0))
                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack {
                                        LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                                  spacing: 9.0) {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                PhotosGallery2Cell()
                                            }
                                        }
                                    }
                                }
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                .fixedSize(horizontal: false, vertical: false)
                                Text(StringConstants.kLblSellPrice)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(34.0))
                                HStack {
                                    Text(StringConstants.kLbl150000)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(61.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Image("img_alarm")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(24.0))
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
                                    Text(StringConstants.kLbl320)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblMonth)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(39.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                    Text("Group6861")
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(199.0),
                                               height: getRelativeHeight(20.0))
                                    Image("img_alarm")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                            }
                            Group {
                                Text("layout")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(235.0),
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
                                                FormSpinner1Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(327.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                Text(StringConstants.kLblTotalRooms)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(107.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(34.0))
                                ScrollView(.horizontal, showsIndicators: false) {
                                    Text("layout")
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(51.0),
                                               alignment: .trailing)
                                }
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
                                Text("chipview")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(314.0),
                                           height: getRelativeHeight(171.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(19.0))
                            }
                        }
                        .frame(width: getRelativeWidth(352.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(23.0))
                    }
                    Button(action: {
                        editFormViewModel.isEditSuccessViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblUpdate)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(133.0))
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
            if editFormViewModel.isEditSuccessViewShow {
                BottomSheetView(isOpen: $editFormViewModel.isEditSuccessViewShow, content: {
                    EditSuccessView(editSuccessViewModel: EditSuccessViewModel(_isOpen: $editFormViewModel
                            .isEditSuccessViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct EditFormView_Previews: PreviewProvider {
    static var previews: some View {
        EditFormView()
    }
}
