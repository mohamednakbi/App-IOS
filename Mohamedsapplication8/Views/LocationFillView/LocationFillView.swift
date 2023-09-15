import SwiftUI

struct LocationFillView: View {
    @StateObject var locationFillViewModel = LocationFillViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrowleft")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        Spacer()
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSkip)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.BlueGray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(38.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                               bottomLeft: 19.0, bottomRight: 19.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                            }
                        })
                        .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(38.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                                   bottomRight: 19.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(13.0))
                    Text(StringConstants.kMsgAddYourLocati)
                        .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(56.0))
                    Text(StringConstants.kMsgYouCanEditTh)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(28.0))
                    ZStack(alignment: .center) {
                        GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                                      locationEnable: .constant(true))
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(300.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0))
                        VStack {
                            Text(StringConstants.kLblSelectOnMap2)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(ColorConstants.WhiteA7007f)
                        .padding(.top, getRelativeHeight(250.0))
                        Image("img_lightbulb_orange_300")
                            .resizable()
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(162.0))
                            .padding(.trailing, getRelativeWidth(171.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(300.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0))
                    .padding(.top, getRelativeHeight(51.0))
                    HStack {
                        Image("img_location_6")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblWestJakarta)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(10.0))
                        Text("Group6721")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(20.0))
                        Image("img_arrowdown_indigo_200")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(15.0))
                    Image("image_not_found")
                        .resizable()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(67.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0),
                       alignment: .center)
                Button(action: {}, label: {
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
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
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
        .hideNavigationBar()
    }
}

struct LocationFillView_Previews: PreviewProvider {
    static var previews: some View {
        LocationFillView()
    }
}
