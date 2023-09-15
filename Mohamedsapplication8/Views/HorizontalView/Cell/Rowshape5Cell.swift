import SwiftUI

struct Rowshape5Cell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Image("img_shape_140x126_1")
                    .resizable()
                    .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(140.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                               bottomRight: 18.0))
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {}, label: {
                        Image("img_favorite_white_a700")
                    })
                    .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.RedA200))
                    HStack {
                        Image("img_buttoncategory_25x25")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeHeight(13.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kLblVilla)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(8.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(25.0))
                    }
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.BlueGray700Af))
                    .padding(.top, getRelativeHeight(74.0))
                }
                .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(124.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
                .padding(.trailing, getRelativeWidth(86.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(140.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgBaliBeachview)
                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(32.0),
                           alignment: .leading)
                HStack {
                    Image("img_star_9x9")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl422)
                        .font(FontScheme.kMontserratBold(size: getRelativeHeight(8.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(9.0))
                HStack {
                    Image("img_location_9x9")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLblBaliIndonesia)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(6.0))
                HStack {
                    Text(StringConstants.kLbl420)
                        .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                    Text(StringConstants.kLblMonth)
                        .font(FontScheme.kMontserratMedium(size: getRelativeHeight(8.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(28.0))
            }
            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(118.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(325.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        .hideNavigationBar()
    }
}

/* struct Rowshape5Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowshape5Cell()
 }
 } */
