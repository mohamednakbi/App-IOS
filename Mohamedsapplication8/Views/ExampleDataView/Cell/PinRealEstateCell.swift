import SwiftUI

struct PinRealEstateCell: View {
    var body: some View {
        ZStack(alignment: .center) {
            ZStack(alignment: .center) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                               bottomRight: 15.0)
                            .fill(ColorConstants.IndigoA40067))
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(8.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0)
                            .fill(ColorConstants.IndigoA40081))
                    .padding(.top, getRelativeHeight(4.91))
                    .padding(.bottom, getRelativeHeight(5.09))
                    .padding(.horizontal, getRelativeWidth(8.5))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(18.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(32.57))
            .padding(.horizontal, getRelativeWidth(1.21))
            ZStack(alignment: .center) {
                Image("img_location_43x34")
                    .resizable()
                    .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                               bottomRight: 3.0))
                Image("img_vector")
                    .resizable()
                    .frame(width: getRelativeWidth(27.0), height: getRelativeWidth(29.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.bottom, getRelativeHeight(11.54))
                    .padding(.horizontal, getRelativeWidth(2.43))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(43.0),
                   alignment: .leading)
            .padding(.bottom, getRelativeHeight(8.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(32.0), alignment: .leading)
    }
}

/* struct PinRealEstateCell_Previews: PreviewProvider {

 static var previews: some View {
 			PinRealEstateCell()
 }
 } */
