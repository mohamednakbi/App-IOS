import SwiftUI

struct TopAgentsProfileDetailTabContainerView: View {
    @StateObject var topAgentsProfileDetailTabContainerViewModel =
        TopAgentsProfileDetailTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrowleft")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.leading, getRelativeWidth(24.0))
                    Text(StringConstants.kLblProfile)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                    Button(action: {}, label: {
                        Image("img_upload_50x50")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ZStack(alignment: .topLeading) {
                            Image("img_shape_100x100_7")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeWidth(100.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            Text(StringConstants.kLbl1)
                                .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(8.0))
                                .padding(.vertical, getRelativeHeight(4.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(25.0), alignment: .center)
                                .background(ColorConstants.Orange300)
                                .padding(.bottom, getRelativeHeight(75.0))
                                .padding(.trailing, getRelativeWidth(73.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        Text(StringConstants.kLblAmanda)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                        Text(StringConstants.kMsgAmandaEmailCom)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLbl50)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(23.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                RatingBarView(selected: $topAgentsProfileDetailTabContainerViewModel
                                    .ratingbarRating,
                                    heightWeightImage: getRelativeWidth(10.0))
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(10.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(7.0))
                            }
                            .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                       bottomLeft: 18.0, bottomRight: 18.0)
                                    .fill(ColorConstants.Red50))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLbl235)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLblReviews)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(43.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                    bottomRight: 18.0)
                                    .stroke(ColorConstants.BlueGray50,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                       bottomLeft: 18.0, bottomRight: 18.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(10.0))
                            VStack {
                                Text(StringConstants.kLbl112)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kLblSold)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(23.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                    bottomRight: 18.0)
                                    .stroke(ColorConstants.BlueGray50,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                       bottomLeft: 18.0, bottomRight: 18.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        TabsView(tabs: $topAgentsProfileDetailTabContainerViewModel.tabButtonList,
                                 selectedTabIndex: $topAgentsProfileDetailTabContainerViewModel
                                     .selectedButtonIndex,
                                 selectedTab: topAgentsProfileDetailTabContainerViewModel
                                     .tabButtonList[0], fontSize: 12.0,
                                 fontName: FontScheme
                                     .kRalewaySemiBold(size: getRelativeHeight(12.0)),
                                 selectedFontColor: ColorConstants.BlueGray80001,
                                 unSelectedFontColor: ColorConstants.BlueGray80001,
                                 selectedBackColor: ColorConstants.WhiteA700, cornerRadius: 16.0,
                                 type: .customBackground)
                            .frame(height: getRelativeHeight(50.0))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                        PagerView(content: {
                            TopAgentsProfileDetailView()
                            TopAgentsProfileDetailView()
                        }, tabIndex: $topAgentsProfileDetailTabContainerViewModel.ratingbarRating,
                        pagers: $topAgentsProfileDetailTabContainerViewModel.tabButtonList)
                            .frame(height: getRelativeHeight(567.0), alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .center)
                }
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

struct TopAgentsProfileDetailTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TopAgentsProfileDetailTabContainerView()
    }
}
