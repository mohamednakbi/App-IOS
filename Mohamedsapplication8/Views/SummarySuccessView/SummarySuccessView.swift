import SwiftUI

struct SummarySuccessView: View {
    @StateObject var summarySuccessViewModel = SummarySuccessViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Divider()
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .background(ColorConstants.BlueGray600)
                VStack {
                    ZStack {
                        Button(action: {}, label: {
                            Image("img_group6524")
                        })
                        .frame(width: getRelativeWidth(70.0), height: getRelativeWidth(70.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                                   bottomRight: 35.0)
                                .fill(ColorConstants.GreenA400))
                        .padding(.all, getRelativeWidth(20.0))
                        .padding(.vertical, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(110.0), height: getRelativeWidth(110.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 55.0, topRight: 55.0, bottomLeft: 55.0,
                                               bottomRight: 55.0)
                            .fill(ColorConstants.GreenA40067))
                }
                .frame(width: getRelativeWidth(142.0), height: getRelativeWidth(142.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 71.0, topRight: 71.0, bottomLeft: 71.0,
                                           bottomRight: 71.0)
                        .fill(ColorConstants.GreenA40063))
                .padding(.top, getRelativeHeight(22.0))
                .padding(.horizontal, getRelativeWidth(92.0))
                Text(StringConstants.kMsgYourTransactio)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(228.0), height: getRelativeHeight(72.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(28.0))
                Text(StringConstants.kMsgLoremIpsumDol5)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(15.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(26.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgContinueExplor)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .padding(.trailing, getRelativeWidth(86.0))
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
                            .padding(.top, getRelativeHeight(36.0))
                    }
                })
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.IndigoA400))
                .padding(.top, getRelativeHeight(36.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(467.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                       bottomRight: 50.0)
                    .fill(ColorConstants.WhiteA700))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct SummarySuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SummarySuccessView()
    }
}
