import SwiftUI

struct Layout7Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Spacer()
                Image("img_shape_50x50_9")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipShape(Circle())
                    .padding(.bottom, getRelativeHeight(58.0))
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kLblKurtMullins)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                        RatingBarView(selected: .constant(2),
                                      heightWeightImage: getRelativeWidth(10.0))
                            .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(117.0))
                    }
                    .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    Text(StringConstants.kMsgLoremIpsumDol4)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.trailing, getRelativeWidth(5.0))
                    Text(StringConstants.kLbl8DaysAgo)
                        .font(FontScheme.kMontserratRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Indigo200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(9.0))
                }
                .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(96.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(8.0))
                Spacer()
            }
            .frame(width: getRelativeWidth(325.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.Gray100))
        }
        .hideNavigationBar()
    }
}

/* struct Layout7Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Layout7Cell()
 }
 } */
