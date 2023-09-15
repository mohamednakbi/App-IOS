import SwiftUI

struct PhotosUserCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Image("img_shape_70x70_1")
                    .resizable()
                    .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                           alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipShape(Circle())
                Text(StringConstants.kLblAmanda)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(10.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
            }
            .frame(width: getRelativeWidth(68.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct PhotosUserCell_Previews: PreviewProvider {

 static var previews: some View {
 			PhotosUserCell()
 }
 } */
