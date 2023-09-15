import SwiftUI

struct Columnshape4Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                Image("img_shape_174x144_1")
                    .resizable()
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(174.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                               bottomRight: 15.0))
                Text(StringConstants.kLbl1)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .padding(.horizontal, getRelativeWidth(8.0))
                    .padding(.vertical, getRelativeHeight(4.0))
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(25.0),
                           alignment: .center)
                    .background(ColorConstants.Orange300)
                    .padding(.bottom, getRelativeHeight(141.73))
                    .padding(.trailing, getRelativeWidth(109.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(174.0),
                   alignment: .leading)
            Text(StringConstants.kLblBali)
                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.BlueGray80001)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(11.0))
                .padding(.bottom, getRelativeHeight(9.0))
                .padding(.leading, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(158.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        .hideNavigationBar()
    }
}

/* struct Columnshape4Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columnshape4Cell()
 }
 } */
