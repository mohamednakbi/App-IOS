import SwiftUI

struct Columnshape8Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .leading) {
                Image("img_shape_160x144_18")
                    .resizable()
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(160.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                               bottomRight: 15.0))
                VStack {
                    Button(action: {}, label: {
                        Image("img_checkmark")
                    })
                    .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700E5))
                    Button(action: {}, label: {
                        Image("img_text_2")
                    })
                    .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(25.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.BlueGray700Af))
                    .padding(.top, getRelativeHeight(94.0))
                }
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(144.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
                .padding(.trailing, getRelativeWidth(111.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(160.0),
                   alignment: .leading)
            Text(StringConstants.kLblHouse)
                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.BlueGray80001)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(15.0),
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

/* struct Columnshape8Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columnshape8Cell()
 }
 } */
