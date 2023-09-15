import SwiftUI

struct ItemPromotionCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgHalloweenSale)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(43.0),
                               alignment: .leading)
                    Text(StringConstants.kMsgAllDiscountUp)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(63.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(82.54))
                .padding(.trailing, getRelativeWidth(175.0))
                ZStack {
                    Image("img_arrowright")
                        .resizable()
                        .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(7.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(25.0))
                        .padding(.horizontal, getRelativeWidth(38.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(56.0),
                       alignment: .leading)
                .background(RoundedCorners(topRight: 25.0).fill(ColorConstants.BlueGray80087))
                .padding(.top, getRelativeHeight(124.0))
                .padding(.trailing, getRelativeWidth(207.0))
                Image("img_subtract_145x207")
                    .resizable()
                    .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(145.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(35.0))
                    .padding(.leading, getRelativeWidth(93.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(298.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.IndigoA400))
        }
        .hideNavigationBar()
    }
}

/* struct ItemPromotionCell_Previews: PreviewProvider {

 static var previews: some View {
 			ItemPromotionCell()
 }
 } */
