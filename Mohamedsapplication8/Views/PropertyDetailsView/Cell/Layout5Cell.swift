import SwiftUI

struct Layout5Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Image("img_mdibedempty")
                    .resizable()
                    .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(20.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLbl2Bedroom)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(141.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.Gray100))
        }
        .hideNavigationBar()
    }
}

/* struct Layout5Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Layout5Cell()
 }
 } */
