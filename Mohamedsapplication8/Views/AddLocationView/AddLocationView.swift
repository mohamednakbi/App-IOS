import SwiftUI

struct AddLocationView: View {
    @StateObject var addLocationViewModel = AddLocationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                        Text(StringConstants.kLblAddListing)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgWhereIsTheLo)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(41.0))
                        HStack {
                            Button(action: {}, label: {
                                Image("img_location_50x50")
                            })
                            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                    bottomRight: 25.0)
                                    .stroke(ColorConstants.Gray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            Spacer()
                            Text(StringConstants.kMsgJlCisangkuy)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(259.0),
                                       height: getRelativeHeight(37.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(40.0))
                        ZStack(alignment: .center) {
                            GoogleMapView(zoomEnable: .constant(true),
                                          defaultZoomLevel: .constant(5.0),
                                          locationEnable: .constant(true))
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(356.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0))
                            VStack {
                                Text(StringConstants.kMsgSelectOnTheM)
                                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA7007f)
                            .padding(.top, getRelativeHeight(306.0))
                            Image("img_location_51x34")
                                .resizable()
                                .frame(width: getRelativeWidth(34.0),
                                       height: getRelativeHeight(51.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(226.0))
                                .padding(.horizontal, getRelativeWidth(147.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(356.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0))
                        .padding(.top, getRelativeHeight(20.0))
                        Image("image_not_found")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(82.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(641.0),
                           alignment: .center)
                    Button(action: {
                        addLocationViewModel.nextScreen = "AddPhotosView"
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
                                .padding(.bottom, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(25.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.bottom, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(25.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AddPhotosView(),
                                   tag: "AddPhotosView",
                                   selection: $addLocationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct AddLocationView_Previews: PreviewProvider {
    static var previews: some View {
        AddLocationView()
    }
}
