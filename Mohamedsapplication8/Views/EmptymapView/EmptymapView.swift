import SwiftUI

struct EmptymapView: View {
    @StateObject var emptymapViewModel = EmptymapViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .center) {
            GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                          locationEnable: .constant(true))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Picker(StringConstants.kMsgJakartaIndone,
                           selection: $emptymapViewModel.countryPicker1) {
                        ForEach(emptymapViewModel.countryPicker1Values, id: \.self) { value in
                            Text(value)
                        }
                    }
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .font(.system(size: getRelativeHeight(10)))
                    .pickerStyle(MenuPickerStyle())
                    Button(action: {}, label: {
                        Image("img_settings")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA700Cc))
                    .shadow(color: ColorConstants.Indigo1008c, radius: 30, x: 0, y: 15)
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                HStack {
                    Image("img_search")
                        .resizable()
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Text(StringConstants.kMsgSearchHouseA)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Indigo200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(10.0))
                    Text("Group6815")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(36.0))
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
                        .padding(.leading, getRelativeWidth(14.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.WhiteA700Cc))
                .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
                .padding(.top, getRelativeHeight(20.0))
                Text("Group6814")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(404.0))
                HStack {
                    Text(StringConstants.kLbl36)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(12.0))
                        .padding(.vertical, getRelativeHeight(7.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                               alignment: .center)
                        .background(ColorConstants.RedA200)
                    Text(StringConstants.kLblNearbyYou)
                        .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(50.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.BlueGray700Af))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgCanTFoundRea)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .padding(.trailing, getRelativeWidth(63.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(17.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.RedA200))
                            .padding(.top, getRelativeHeight(30.0))
                    }
                })
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.RedA200))
                .padding(.top, getRelativeHeight(30.0))
            }
            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(674.0),
                   alignment: .center)
            .padding(.bottom, getRelativeHeight(114.0))
            .padding(.horizontal, getRelativeWidth(24.0))
        }
        .hideNavigationBar()
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct EmptymapView_Previews: PreviewProvider {
    static var previews: some View {
        EmptymapView()
    }
}
