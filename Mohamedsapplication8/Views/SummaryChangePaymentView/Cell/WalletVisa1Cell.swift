import SwiftUI

struct WalletVisa1Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 0) {
                Button(action: {}, label: {
                    Image("img_checkmark")
                })
                .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.WhiteA700E5))
                Text(StringConstants.kLbl1542)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(37.0))
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblBalance)
                            .font(FontScheme.kRalewayRomanSemiBold(size: getRelativeHeight(8.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                        Text(StringConstants.kLbl54200)
                            .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(30.0),
                           alignment: .leading)
                    Image("img_location_20x20")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(20.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(52.0))
                }
                .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(30.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(33.0))
            }
            .frame(width: getRelativeWidth(157.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.GreenA400))
        }
        .hideNavigationBar()
    }
}

/* struct WalletVisa1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			WalletVisa1Cell()
 }
 } */
