import SwiftUI

struct FormSpinnerCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Text(StringConstants.kLblBedroom)
                    .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(7.0))
                Text("Group6796")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(30.0),
                           alignment: .leading)
                ZStack(alignment: .center) {
                    Image("img_shape")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(30.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                   bottomRight: 9.0))
                    Image("img_menu_10x10")
                        .resizable()
                        .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(10.26))
                        .padding(.bottom, getRelativeHeight(9.74))
                        .padding(.horizontal, getRelativeWidth(10.26))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(30.0),
                       alignment: .leading)
                Text(StringConstants.kLbl33)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.bottom, getRelativeHeight(4.0))
                    .padding(.leading, getRelativeWidth(18.0))
                ZStack(alignment: .center) {
                    Image("img_shape")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(30.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                   bottomRight: 9.0))
                    Image("img_plus_10x10")
                        .resizable()
                        .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(10.26))
                        .padding(.bottom, getRelativeHeight(9.74))
                        .padding(.horizontal, getRelativeWidth(10.26))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(30.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(18.0))
            }
            .frame(width: getRelativeWidth(325.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Gray100))
        }
        .hideNavigationBar()
    }
}

/* struct FormSpinnerCell_Previews: PreviewProvider {

 static var previews: some View {
 			FormSpinnerCell()
 }
 } */
