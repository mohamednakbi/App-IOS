import SwiftUI

struct TopAgentsProfileDetailView: View {
    @StateObject var topAgentsProfileDetailViewModel = TopAgentsProfileDetailViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack(alignment: .center) {
                    VStack {
                        HStack {
                            Text(StringConstants.kLbl140)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                            Text(StringConstants.kLblListings2)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.bottom, getRelativeHeight(7.0))
                                .padding(.leading, getRelativeWidth(5.0))
                            HStack {
                                ZStack {
                                    Image("img_user_blue_gray_800_01")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeWidth(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.WhiteA700))
                                Image("img_television")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(17.0))
                            }
                            .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.leading, getRelativeWidth(133.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 7.0) {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Columnshape5Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(20.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(522.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(11.0))
                    Text(StringConstants.kLblStartChat)
                        .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .padding(.trailing, getRelativeWidth(125.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.vertical, getRelativeHeight(25.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .background(ColorConstants.IndigoA400)
                        .padding(.top, getRelativeHeight(463.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(533.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct TopAgentsProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopAgentsProfileDetailView()
    }
}
