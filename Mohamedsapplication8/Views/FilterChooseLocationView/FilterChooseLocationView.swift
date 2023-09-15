import SwiftUI

struct FilterChooseLocationView: View {
    @StateObject var filterChooseLocationViewModel = FilterChooseLocationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                              locationEnable: .constant(true))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                VStack(alignment: .trailing, spacing: 0) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrowleft")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700))
                    HStack {
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(8.0))
                        Text(StringConstants.kLblFindLocation)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Indigo200)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        Text("Group6612")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(36.0))
                        Divider()
                            .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .background(ColorConstants.Indigo2006c)
                        Image("img_upload")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(8.0))
                            .padding(.leading, getRelativeWidth(14.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .trailing)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                    .padding(.top, getRelativeHeight(15.0))
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
                           alignment: .trailing)
                    .padding(.top, getRelativeHeight(139.0))
                    .padding(.trailing, getRelativeWidth(97.0))
                    Text("Group6611")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(151.0))
                    Button(action: {}, label: {
                        Image("img_location_5")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.BlueGray700Af))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblLocationDetail)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        HStack {
                            Button(action: {}, label: {
                                Image("img_location_50x50")
                            })
                            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.BlueGray50,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.BlueGray50))
                            Text(StringConstants.kMsgJlPandanaran)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(37.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.trailing, getRelativeWidth(31.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(133.0),
                           alignment: .trailing)
                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                               bottomRight: 20.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                    .padding(.top, getRelativeHeight(15.0))
                    Button(action: {
                        filterChooseLocationViewModel.nextScreen = "ResultFilterView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblChooseLocation)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(97.0))
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
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(Image("img_group6503")
                    .resizable()
                    .scaledToFit())
                Group {
                    NavigationLink(destination: ResultFilterView(),
                                   tag: "ResultFilterView",
                                   selection: $filterChooseLocationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        .hideNavigationBar()
    }
}

struct FilterChooseLocationView_Previews: PreviewProvider {
    static var previews: some View {
        FilterChooseLocationView()
    }
}
