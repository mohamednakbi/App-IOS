import SwiftUI

struct Columnshape6Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .center) {
                Image("img_shape_160x144_10")
                    .resizable()
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(160.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                               bottomRight: 15.0))
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            Image("img_edit")
                        })
                        .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray80001))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_location_red_a200")
                        })
                        .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700C6))
                    }
                    .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    HStack {
                        Button(action: {}, label: {
                            Image("img_buttoncategory")
                        })
                        .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.BlueGray700Af))
                        Spacer()
                        HStack {
                            Text(StringConstants.kLbl370)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeHeight(15.0), alignment: .leading)
                            Spacer()
                            Text(StringConstants.kLblMonth)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(6.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeHeight(8.0), alignment: .leading)
                                .padding(.vertical, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.BlueGray700Af))
                    }
                    .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(94.0))
                }
                .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(144.0),
                       alignment: .leading)
                .padding(.all, getRelativeWidth(8.0))
                .padding(.vertical, getRelativeHeight(8.0))
                .padding(.horizontal, getRelativeWidth(8.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(160.0),
                   alignment: .leading)
            Text(StringConstants.kMsgFairviewApartm)
                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.BlueGray80001)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.leading, getRelativeWidth(8.0))
            HStack {
                Image("img_star_1")
                    .resizable()
                    .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLbl49)
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(8.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                Image("img_location_1")
                    .resizable()
                    .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(6.0))
                Text(StringConstants.kMsgJakartaIndone)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(10.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(10.0))
            .padding(.bottom, getRelativeHeight(7.0))
            .padding(.leading, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(158.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        .hideNavigationBar()
    }
}

/* struct Columnshape6Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columnshape6Cell()
 }
 } */
