import SwiftUI

struct NotificationListView: View {
    @StateObject var notificationListViewModel = NotificationListViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 3, id: \.self) { index in
                                    Layout3Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(351.0), alignment: .leading)
                    Text(StringConstants.kLblToday)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(35.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    Rowshape4Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(17.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgOlderNotificat)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(34.0))
                    HStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_shape_50x50_4")
                                .resizable()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            ZStack {
                                Image("img_text_15")
                                    .resizable()
                                    .frame(width: getRelativeWidth(8.0),
                                           height: getRelativeHeight(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(4.44))
                                    .padding(.horizontal, getRelativeWidth(5.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(18.0),
                                   alignment: .bottomTrailing)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.BlueGray700Af))
                            .padding(.top, getRelativeHeight(32.0))
                            .padding(.leading, getRelativeWidth(32.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .top)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblVelmaCole)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                            Text(StringConstants.kMsgJustFavorited)
                                .font(FontScheme.kRalewayRomanMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(124.0),
                                       height: getRelativeHeight(32.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                            Text(StringConstants.kLbl2DaysAgo)
                                .font(FontScheme.kMontserratRegular(size: getRelativeHeight(8.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Indigo200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(42.0),
                                       height: getRelativeHeight(10.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(76.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(10.0))
                        Text("Group6659")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(50.0))
                        Image("img_shape_50x60_2")
                            .resizable()
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(108.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                }
                .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(655.0),
                       alignment: .trailing)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.leading, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
