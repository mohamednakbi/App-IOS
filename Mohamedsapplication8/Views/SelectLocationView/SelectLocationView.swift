import SwiftUI

struct SelectLocationView: View {
    @StateObject var selectLocationViewModel = SelectLocationViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Divider()
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .background(ColorConstants.BlueGray600)
                HStack {
                    Text(StringConstants.kLblSelectLocation)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.bottom, getRelativeHeight(14.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblEdit)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.BlueGray80001))
                        }
                    })
                    .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(50.0),
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
                        Image("img_location_8")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA70075))
                    Spacer()
                    Text(StringConstants.kMsgSrengsengKemb)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(37.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(5.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(80.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.GreenA400))
                .padding(.top, getRelativeHeight(35.0))
                HStack {
                    Button(action: {}, label: {
                        Image("img_location_9")
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
                    Text(StringConstants.kMsgPetomponKec)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(37.0),
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
                .padding(.top, getRelativeHeight(10.0))
                Button(action: {}, label: {
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
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                       bottomLeft: 35.0, bottomRight: 35.0)
                                    .fill(ColorConstants.IndigoA400))
                            .padding(.top, getRelativeHeight(35.0))
                    }
                })
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.IndigoA400))
                .padding(.top, getRelativeHeight(35.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(446.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                       bottomRight: 50.0)
                    .fill(ColorConstants.WhiteA700))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct SelectLocationView_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocationView()
    }
}
