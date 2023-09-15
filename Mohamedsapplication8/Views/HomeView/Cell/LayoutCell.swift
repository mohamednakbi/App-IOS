import SwiftUI

struct LayoutCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Image("img_text_17")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLblAll)
                    .font(FontScheme.kRalewayRomanBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(84.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.GreenA400))
        }
        .hideNavigationBar()
    }
}

/* struct LayoutCell_Previews: PreviewProvider {

 static var previews: some View {
 			LayoutCell()
 }
 } */
