import SwiftUI

struct CardReviewCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("img_shape_36x74")
                    .resizable()
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgFairviewApartm)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(10.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                    HStack {
                        Image("img_star_1")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kLbl49)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(8.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                        Image("img_location_2")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.leading, getRelativeWidth(6.0))
                        Text(StringConstants.kMsgSemarangIndon)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(8.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(23.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(56.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                .stroke(ColorConstants.BlueGray50, lineWidth: 1))
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                .fill(ColorConstants.WhiteA700))
            HStack {
                Spacer()
                Image("img_shape_50x50_2")
                    .resizable()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipShape(Circle())
                    .padding(.bottom, getRelativeHeight(58.0))
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kLblGeraldo)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                        RatingBarView(selected: .constant(2),
                                      heightWeightImage: getRelativeWidth(10.0))
                            .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(141.0))
                    }
                    .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    Text(StringConstants.kMsgLoremIpsumDol4)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.trailing, getRelativeWidth(5.0))
                    Text(StringConstants.kLbl10MinsAgo)
                        .font(FontScheme.kMontserratRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Indigo200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(9.0))
                }
                .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(96.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(8.0))
                Spacer()
            }
            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(128.0),
                   alignment: .leading)
            .background(RoundedCorners(bottomLeft: 25.0, bottomRight: 25.0)
                .fill(ColorConstants.Gray100))
        }
        .frame(width: getRelativeWidth(325.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct CardReviewCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardReviewCell()
 }
 } */
