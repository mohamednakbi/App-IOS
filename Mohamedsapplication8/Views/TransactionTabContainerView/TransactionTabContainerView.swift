import SwiftUI

struct TransactionTabContainerView: View {
    @StateObject var transactionTabContainerViewModel = TransactionTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Text(StringConstants.kLblProfile)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                            Button(action: {}, label: {
                                Image("img_c6f6d1d0a80c478fac3dcfbb08744752")
                            })
                            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.leading, getRelativeWidth(91.0))
                        }
                        .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(50.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.trailing, getRelativeWidth(24.0))
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_shape_100x100_8")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeWidth(100.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            Button(action: {
                                transactionTabContainerViewModel.nextScreen = "EditProfileView"
                            }, label: {
                                Image("img_9ce8cff206464d90abe590abdd2875e0")
                            })
                            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.BlueGray80001))
                            .padding(.top, getRelativeHeight(70.0))
                            .padding(.leading, getRelativeWidth(70.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        Text(StringConstants.kMsgJonathanAnders)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                        Text(StringConstants.kMsgJonathanEmail)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                        HStack {
                            VStack {
                                Text(StringConstants.kLbl302)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kLblListings)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(6.0))
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
                            VStack {
                                Text(StringConstants.kLbl122)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(15.0),
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
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLbl282)
                                    .font(FontScheme.kMontserratBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeWidth(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(12.0))
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
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        VStack(alignment: .leading, spacing: 0) {
                            TabsView(tabs: $transactionTabContainerViewModel.tabLayoutList,
                                     selectedTabIndex: $transactionTabContainerViewModel
                                         .selectedLayoutIndex,
                                     selectedTab: transactionTabContainerViewModel.tabLayoutList[0],
                                     fontSize: 12.0,
                                     fontName: FontScheme
                                         .kRalewaySemiBold(size: getRelativeHeight(12.0)),
                                     selectedFontColor: ColorConstants.BlueGray80001,
                                     unSelectedFontColor: ColorConstants.BlueGray80001,
                                     selectedBackColor: ColorConstants.WhiteA700,
                                     cornerRadius: 16.0,
                                     type: .customBackground)
                                .frame(height: getRelativeHeight(32.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        PagerView(content: {
                            Transaction1View()
                            ListingsView()
                            Transaction1View()
                        }, tabIndex: $transactionTabContainerViewModel.selectedLayoutIndex,
                        pagers: $transactionTabContainerViewModel.tabLayoutList)
                            .frame(height: getRelativeHeight(326.0), alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(698.0),
                           alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: EditProfileView(),
                                   tag: "EditProfileView",
                                   selection: $transactionTabContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct TransactionTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionTabContainerView()
    }
}
