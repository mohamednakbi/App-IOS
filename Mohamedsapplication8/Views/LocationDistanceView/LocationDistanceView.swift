import SwiftUI

struct LocationDistanceView: View {
    @StateObject var locationDistanceViewModel =
        LocationDistanceViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Divider()
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .background(ColorConstants.BlueGray600)
                HStack {
                    Text(StringConstants.kMsgLocationDistan)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.bottom, getRelativeHeight(13.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblEdit)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(27.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.BlueGray80001))
                        }
                    })
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.BlueGray80001))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(32.0))
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Image("img_location_deep_orange_a200_50x50")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                            bottomRight: 25.0)
                            .stroke(ColorConstants.BlueGray50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.BlueGray50))
                    Spacer()
                    Text(StringConstants.kMsg25KmFromSre)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(217.0), height: getRelativeHeight(37.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.bottom, getRelativeHeight(5.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(80.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                        bottomRight: 25.0)
                        .stroke(ColorConstants.BlueGray50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.top, getRelativeHeight(35.0))
                HStack {
                    Button(action: {}, label: {
                        Image("img_location_deep_orange_a200_50x50")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                            bottomRight: 25.0)
                            .stroke(ColorConstants.BlueGray50,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.BlueGray50))
                    Text(StringConstants.kMsg182KmFromPe)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(37.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(15.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(80.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                        bottomRight: 25.0)
                        .stroke(ColorConstants.BlueGray50,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.vertical, getRelativeHeight(15.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(378.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                       bottomRight: 50.0)
                    .fill(ColorConstants.WhiteA700))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct LocationDistanceView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDistanceView()
    }
}
