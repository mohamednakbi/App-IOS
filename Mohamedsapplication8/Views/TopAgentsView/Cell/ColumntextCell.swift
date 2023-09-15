import SwiftUI

struct ColumntextCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLbl1)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(25.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                       bottomRight: 8.0)
                    .fill(ColorConstants.Orange300))
            Image("img_shape_100x100_1")
                .resizable()
                .frame(width: getRelativeWidth(98.0), height: getRelativeWidth(100.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
            Text(StringConstants.kLblAmanda)
                .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.BlueGray80001)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
            HStack {
                Image("img_star_9x9")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLbl50)
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(4.0))
                Image("img_home")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(8.0))
                Text(StringConstants.kLbl112)
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(4.0))
                Text(StringConstants.kLblSold)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(17.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(4.0))
        }
        .frame(width: getRelativeWidth(158.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        .hideNavigationBar()
    }
}

/* struct ColumntextCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumntextCell()
 }
 } */
