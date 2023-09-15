import SwiftUI

struct Rowshape1Cell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Image("img_shape_104x126_1")
                    .resizable()
                    .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(104.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                               bottomRight: 15.0))
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {}, label: {
                        Image("img_location_red_a200")
                    })
                    .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700C6))
                    HStack {
                        Image("img_buttoncategory")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeHeight(13.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kLblApartment)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(8.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(6.0))
                    }
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.BlueGray700Af))
                    .padding(.top, getRelativeHeight(38.0))
                }
                .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(88.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
                .padding(.trailing, getRelativeWidth(44.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(104.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgSkyDandelions)
                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(35.0),
                           alignment: .leading)
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
                }
                .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
                HStack {
                    Image("img_location_deep_orange_a200")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kMsgJakartaIndone)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(6.0))
            }
            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(69.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(266.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.WhiteA700Cc))
        .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0, y: 17)
        .hideNavigationBar()
    }
}

/* struct Rowshape1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowshape1Cell()
 }
 } */
