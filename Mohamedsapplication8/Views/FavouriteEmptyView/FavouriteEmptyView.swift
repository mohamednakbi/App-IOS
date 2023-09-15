import SwiftUI

struct FavouriteEmptyView: View {
    @StateObject var favouriteEmptyViewModel = FavouriteEmptyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(StringConstants.kLblMyFavorite)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(18.0))
                    Button(action: {}, label: {
                        Image("img_ae45615de12342ab99f19311ea988aa7")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.leading, getRelativeWidth(75.0))
                }
                .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(50.0),
                       alignment: .trailing)
                HStack {
                    Text(StringConstants.kLbl0)
                        .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.bottom, getRelativeHeight(9.0))
                    Text(StringConstants.kLblEstates)
                        .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.bottom, getRelativeHeight(9.0))
                        .padding(.leading, getRelativeWidth(5.0))
                    Text("Group6607")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(40.0))
                    HStack {
                        ZStack {
                            Image("img_menu")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        Spacer()
                        ZStack {
                            Image("img_menu_1")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                               bottomRight: 20.0)
                            .fill(ColorConstants.Gray100))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                Text("Group6606")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(124.0))
                VStack {
                    VStack {
                        Text(StringConstants.kLbl)
                            .font(FontScheme.kMontserratRegular(size: getRelativeHeight(30.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(25.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(70.0), height: getRelativeWidth(70.0),
                                   alignment: .center)
                            .background(ColorConstants.GreenA400)
                    }
                    .frame(width: getRelativeWidth(110.0), height: getRelativeWidth(110.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 55.0, topRight: 55.0, bottomLeft: 55.0,
                                               bottomRight: 55.0)
                            .fill(ColorConstants.GreenA40067))
                }
                .frame(width: getRelativeWidth(142.0), height: getRelativeWidth(142.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 71.0, topRight: 71.0, bottomLeft: 71.0,
                                           bottomRight: 71.0)
                        .fill(ColorConstants.GreenA40063))
                .padding(.horizontal, getRelativeWidth(92.0))
                Text(StringConstants.kMsgYourFavoriteP)
                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(76.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(35.0))
                Text(StringConstants.kMsgClickAddButto)
                    .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.BlueGray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(37.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(21.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct FavouriteEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteEmptyView()
    }
}
