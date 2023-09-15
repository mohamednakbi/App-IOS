import SwiftUI

struct DeleteConfirmationView: View {
    @StateObject var deleteConfirmationViewModel =
        DeleteConfirmationViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Divider()
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .background(ColorConstants.BlueGray600)
                VStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLbl2)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(25.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeHeight(31.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(70.0), height: getRelativeWidth(70.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                                   bottomRight: 35.0)
                                .fill(ColorConstants.Orange300))
                    }
                    .frame(width: getRelativeWidth(110.0), height: getRelativeWidth(110.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 55.0, topRight: 55.0, bottomLeft: 55.0,
                                               bottomRight: 55.0)
                            .fill(ColorConstants.Orange30067))
                }
                .frame(width: getRelativeWidth(142.0), height: getRelativeWidth(142.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 71.0, topRight: 71.0, bottomLeft: 71.0,
                                           bottomRight: 71.0)
                        .fill(ColorConstants.Orange30063))
                .padding(.top, getRelativeHeight(22.0))
                .padding(.horizontal, getRelativeWidth(93.0))
                Text(StringConstants.kMsgAreYouSureWa)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(75.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(29.0))
                    .padding(.horizontal, getRelativeWidth(35.0))
                Text(StringConstants.kMsgThisActionCan)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(15.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(21.0))
                HStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCancel)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(51.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(25.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                           bottomLeft: 35.0, bottomRight: 35.0)
                                        .fill(ColorConstants.RedA200))
                                .padding(.trailing, getRelativeWidth(4.0))
                        }
                    })
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.RedA200))
                    .padding(.trailing, getRelativeWidth(4.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblDelete2)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(52.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(25.0))
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                           bottomLeft: 35.0, bottomRight: 35.0)
                                        .fill(ColorConstants.Gray100))
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                    })
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(70.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(37.0))
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

struct DeleteConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteConfirmationView()
    }
}
