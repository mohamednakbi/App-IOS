import SwiftUI

struct Rowshape4Cell: View {
    var body: some View {
        HStack {
            Image("img_shape_50x50_1")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblEmmettPerry)
                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                Text(StringConstants.kMsgJustMessagedY)
                    .font(FontScheme.kRalewayRomanMedium(size: getRelativeHeight(10.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(34.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                Text(StringConstants.kLbl10MinsAgo)
                    .font(FontScheme.kMontserratRegular(size: getRelativeHeight(8.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(75.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(325.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        .hideNavigationBar()
    }
}

/* struct Rowshape4Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowshape4Cell()
 }
 } */
