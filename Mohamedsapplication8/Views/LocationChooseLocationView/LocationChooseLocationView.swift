import SwiftUI

struct LocationChooseLocationView: View {
    @StateObject var locationChooseLocationViewModel = LocationChooseLocationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                              locationEnable: .constant(true))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
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
                            .fill(ColorConstants.WhiteA700))
                    HStack {
                        HStack {
                            Spacer()
                            Image("img_search")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            TextField(StringConstants.kLblFindLocation,
                                      text: $locationChooseLocationViewModel.frametwentyseven)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Indigo200)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(39.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA700)
                        Divider()
                            .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .background(ColorConstants.Indigo2006c)
                            .padding(.leading, getRelativeWidth(4.0))
                        Image("img_upload")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.leading, getRelativeWidth(14.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                    .padding(.top, getRelativeHeight(15.0))
                    Image("img_lightbulb")
                        .resizable()
                        .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(108.0))
                        .padding(.leading, getRelativeWidth(67.0))
                    Text("Group6719")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(182.0))
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
                            Spacer()
                            Text(StringConstants.kMsgSrengsengKemb)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(221.0),
                                       height: getRelativeHeight(37.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(286.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(133.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                               bottomRight: 20.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                    .padding(.top, getRelativeHeight(15.0))
                    Button(action: {
                        locationChooseLocationViewModel.nextScreen = "LocationFillView"
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
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(764.0),
                       alignment: .center)
                .padding(.all, getRelativeWidth(24.0))
                .padding(.vertical, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                Group {
                    NavigationLink(destination: LocationFillView(),
                                   tag: "LocationFillView",
                                   selection: $locationChooseLocationViewModel.nextScreen,
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

struct LocationChooseLocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationChooseLocationView()
    }
}
