import SwiftUI

struct Layout2Cell: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image("img_ticket_53x53")
            })
            .frame(width: getRelativeWidth(51.0), height: getRelativeWidth(53.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                       bottomRight: 17.0)
                    .fill(ColorConstants.GreenA400))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblHlwn40)
                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kMsgClickToUseTh)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(9.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(11.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(36.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(325.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                   bottomRight: 25.0)
                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.GreenA40063,
                                                                 ColorConstants.TealA70063]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)))
        .hideNavigationBar()
    }
}

/* struct Layout2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Layout2Cell()
 }
 } */
