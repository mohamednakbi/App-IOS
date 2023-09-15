import SwiftUI

struct Layout6Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Image("img_buttoncategory_25x25")
                    .resizable()
                    .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLbl2Hospital)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(121.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.Gray100))
        }
        .hideNavigationBar()
    }
}

/* struct Layout6Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Layout6Cell()
 }
 } */
