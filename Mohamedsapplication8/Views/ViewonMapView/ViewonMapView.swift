import SwiftUI

struct ViewonMapView: View {
    @StateObject var viewonMapViewModel = ViewonMapViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .center) {
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
                            .fill(ColorConstants.WhiteA700Cc))
                    Text("Group6842")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(581.0))
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
                            Text(StringConstants.kMsgStCikokoTimu)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(232.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(297.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(18.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(133.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(764.0),
                       alignment: .center)
                .padding(.all, getRelativeWidth(24.0))
                .padding(.vertical, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                   alignment: .topLeading)
            Image("img_mapdetail")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(441.0),
                       alignment: .center)
                .scaledToFit()
                .clipped()
                .padding(.bottom, getRelativeHeight(202.58))
            HStack {
                Picker(StringConstants.kMsgJakartaIndone,
                       selection: $viewonMapViewModel.countryPicker1) {
                    ForEach(viewonMapViewModel.countryPicker1Values, id: \.self) { value in
                        Text(value)
                    }
                }
                .foregroundColor(ColorConstants.BlueGray80001)
                .font(.system(size: getRelativeHeight(10)))
                .pickerStyle(MenuPickerStyle())
                Spacer()
                Button(action: {}, label: {
                    Image("img_location_5")
                })
                .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.BlueGray700Af))
            }
            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(590.0))
            .padding(.horizontal, getRelativeWidth(24.0))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    HStack {
                        Image("img_buttoncategory_25x25")
                            .resizable()
                            .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLbl1Hospital)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700))
                    HStack {
                        Image("img__18x15")
                            .resizable()
                            .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLbl2GasStations)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.leading, getRelativeWidth(10.0))
                    HStack {
                        Image("img__2")
                            .resizable()
                            .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLbl1Schools)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(50.0),
                       alignment: .trailing)
            }
            .padding(.bottom, getRelativeHeight(668.0))
            .padding(.leading, getRelativeWidth(24.0))
        }
        .hideNavigationBar()
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct ViewonMapView_Previews: PreviewProvider {
    static var previews: some View {
        ViewonMapView()
    }
}
