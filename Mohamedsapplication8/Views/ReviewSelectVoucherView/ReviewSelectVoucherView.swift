import SwiftUI

struct ReviewSelectVoucherView: View {
    @StateObject var reviewSelectVoucherViewModel =
        ReviewSelectVoucherViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Divider()
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .background(ColorConstants.BlueGray600)
                    Text(StringConstants.kLblAddVoucher)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(33.0))
                    HStack {
                        Spacer()
                        Image("img_ticket")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        TextField(StringConstants.kMsgTypeYourVouch,
                                  text: $reviewSelectVoucherViewModel.languageText)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.Indigo200)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(19.0))
                    Text(StringConstants.kMsgYourAvailable)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(218.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    Layout2Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    Button(action: {
                        reviewSelectVoucherViewModel.nextScreen = "ReviewFillView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblApplyVoucher)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(104.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(25.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                           bottomLeft: 35.0, bottomRight: 35.0)
                                        .fill(ColorConstants.IndigoA400))
                                .padding(.top, getRelativeHeight(13.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.top, getRelativeHeight(13.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(527.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                           bottomRight: 50.0)
                        .fill(ColorConstants.WhiteA700))
                Group {
                    NavigationLink(destination: ReviewFillView(),
                                   tag: "ReviewFillView",
                                   selection: $reviewSelectVoucherViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ReviewSelectVoucherView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewSelectVoucherView()
    }
}
