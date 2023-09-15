import SwiftUI

struct PreferableSelectedView: View {
    @StateObject var preferableSelectedViewModel = PreferableSelectedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrowleft")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        Spacer()
                        Button(action: {}, label: {
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
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                            }
                        })
                        .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(38.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                                   bottomRight: 19.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgSelectYourPre)
                        .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(76.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(55.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(74.0))
                    Text(StringConstants.kMsgYouCanEditTh)
                        .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.BlueGray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.leading, getRelativeWidth(24.0))
                    ZStack(alignment: .center) {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 7.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        Columnshape9Cell()
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, getRelativeWidth(24.0))
                        .fixedSize(horizontal: false, vertical: false)
                        VStack {
                            Image("image_not_found")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(39.0))
                            Button(action: {
                                preferableSelectedViewModel.nextScreen = "PaymentEmptyView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblNext)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.trailing, getRelativeWidth(145.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(25.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(70.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                                   bottomLeft: 35.0,
                                                                   bottomRight: 35.0)
                                                .fill(ColorConstants.IndigoA400))
                                        .padding(.top, getRelativeHeight(11.0))
                                }
                            })
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                       bottomLeft: 35.0, bottomRight: 35.0)
                                    .fill(ColorConstants.IndigoA400))
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(168.0),
                               alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                    .WhiteA700,
                                ColorConstants
                                    .WhiteA70000]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                        .padding(.top, getRelativeHeight(349.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(656.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(51.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PaymentEmptyView(),
                                   tag: "PaymentEmptyView",
                                   selection: $preferableSelectedViewModel.nextScreen,
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

struct PreferableSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        PreferableSelectedView()
    }
}
