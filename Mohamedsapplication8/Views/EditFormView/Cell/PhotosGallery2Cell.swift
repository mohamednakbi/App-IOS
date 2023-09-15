import SwiftUI

struct PhotosGallery2Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .topTrailing) {
                Image("img_shape_161x159_6")
                    .resizable()
                    .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(161.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0))
                Button(action: {}, label: {
                    Image("img_close_12x12")
                })
                .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(30.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                           bottomRight: 15.0)
                        .fill(ColorConstants.RedA200))
                .padding(.bottom, getRelativeHeight(131.0))
                .padding(.leading, getRelativeWidth(129.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(157.0), alignment: .leading)
        }
        .hideNavigationBar()
    }
}

/* struct PhotosGallery2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			PhotosGallery2Cell()
 }
 } */
