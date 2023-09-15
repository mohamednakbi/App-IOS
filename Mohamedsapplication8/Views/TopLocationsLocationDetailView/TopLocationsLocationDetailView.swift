import SwiftUI

struct TopLocationsLocationDetailView: View {
    @StateObject var topLocationsLocationDetailViewModel = TopLocationsLocationDetailViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    ZStack(alignment: .bottomLeading) {
                        Image("img_shape_320x235_2")
                            .resizable()
                            .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(320.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Button(action: {}, label: {
                            Image("img_star")
                        })
                        .frame(width: getRelativeWidth(53.0), height: getRelativeWidth(53.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.Orange300))
                        .padding(.top, getRelativeHeight(243.0))
                        .padding(.trailing, getRelativeWidth(168.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(320.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(120.0))
                    Image("img_shape_100x110_2")
                        .resizable()
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(220.0))
                        .padding(.leading, getRelativeWidth(245.0))
                    Image("img_shape_210x110_2")
                        .resizable()
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(210.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(110.0))
                        .padding(.leading, getRelativeWidth(245.0))
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrowleft")
                        })
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.WhiteA700Cc))
                        .padding(.leading, getRelativeWidth(24.0))
                        Button(action: {}, label: {
                            Image("img_settings_50x50")
                        })
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.IndigoA400))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(256.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(320.0),
                       alignment: .center)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblBali)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(25.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgOurRecommended2)
                            .font(FontScheme.kRalewayRomanRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                        HStack {
                            TextField(StringConstants.kLblModernHouse,
                                      text: $topLocationsLocationDetailViewModel.formsearch)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .padding()
                            Image("img_search")
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
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(37.0))
                        HStack {
                            Text(StringConstants.kLblFound)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Text(StringConstants.kLbl128)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                            Text(StringConstants.kLblEstates)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(65.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                            Text("Group6781")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(40.0))
                            HStack {
                                ZStack {
                                    Image("img_menu")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeWidth(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                ZStack {
                                    Image("img_menu_blue_gray_800_01")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeWidth(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(20.0))
                        Text("chipview")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(20.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        Rowshape3Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(327.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(20.0))
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(30.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
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

struct TopLocationsLocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopLocationsLocationDetailView()
    }
}
