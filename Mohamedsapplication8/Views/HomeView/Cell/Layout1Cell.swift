import SwiftUI

struct Layout1Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Image("img_shape_40x40_1")
                    .resizable()
                    .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(40.0),
                           alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipShape(Circle())
                Text(StringConstants.kLblBali)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.bottom, getRelativeHeight(13.0))
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(81.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 28.0, topRight: 28.0, bottomLeft: 28.0,
                                       bottomRight: 28.0)
                    .fill(ColorConstants.Gray100))
        }
        .hideNavigationBar()
    }
}

/* struct Layout1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Layout1Cell()
 }
 } */
