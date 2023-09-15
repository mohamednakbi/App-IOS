import SwiftUI

struct ProductTourTwoView: View {
    @StateObject var productTourTwoViewModel = ProductTourTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("img_vector_indigo_a400")
                            .resizable()
                            .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(64.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Spacer()
                        Button(action: {
                            productTourTwoViewModel.nextScreen = "LoginView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSkip)
                                    .font(FontScheme
                                        .kMontserratRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .foregroundColor(ColorConstants.BlueGray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(38.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                               bottomLeft: 19.0, bottomRight: 19.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.vertical, getRelativeHeight(13.0))
                            }
                        })
                        .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(38.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                                   bottomRight: 19.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.vertical, getRelativeHeight(13.0))
                    }
                    .frame(width: getRelativeWidth(307.0), height: getRelativeHeight(64.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(24.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgFastSellYour)
                        .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(74.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(40.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(74.0))
                    Text(StringConstants.kMsgLoremIpsumDol8)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(37.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.leading, getRelativeWidth(24.0))
                    ZStack(alignment: .center) {
                        Image("img_backgroundillustration_520x375_2")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(520.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Button(action: {
                            productTourTwoViewModel.nextScreen = "ProductTourThreeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblNext)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.trailing, getRelativeWidth(97.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(25.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(230.0),
                                           height: getRelativeHeight(70.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                               bottomLeft: 35.0, bottomRight: 35.0)
                                            .fill(ColorConstants.IndigoA400))
                                    .padding(.top, getRelativeHeight(426.0))
                                    .padding(.horizontal, getRelativeWidth(73.0))
                            }
                        })
                        .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                                   bottomRight: 35.0)
                                .fill(ColorConstants.IndigoA400))
                        .padding(.top, getRelativeHeight(426.0))
                        .padding(.horizontal, getRelativeWidth(73.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(520.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(28.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ProductTourThreeView(),
                                   tag: "ProductTourThreeView",
                                   selection: $productTourTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $productTourTwoViewModel.nextScreen,
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

struct ProductTourTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTourTwoView()
    }
}
