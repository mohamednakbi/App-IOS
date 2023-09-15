import SwiftUI

struct AllReviewsView: View {
    @StateObject var allReviewsViewModel = AllReviewsViewModel()
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
                    Text(StringConstants.kLblAllReviews)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        Image("img_shape_53x53_1")
                            .resizable()
                            .frame(width: getRelativeWidth(53.0), height: getRelativeWidth(53.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .background(RoundedCorners(topLeft: 26.0, topRight: 26.0,
                                                       bottomLeft: 26.0, bottomRight: 26.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblAnderson)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Text(StringConstants.kLblOwner)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(9.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(29.0),
                                       height: getRelativeHeight(11.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(29.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(16.0))
                        Text("Group6666")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(20.0))
                        Image("img_volume_50x50")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.trailing, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(85.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(17.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 4, id: \.self) { index in
                                    Layout4Cell()
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                    .padding(.top, getRelativeHeight(20.0))
                    Text(StringConstants.kLblUserReviews)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(24.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    CardReviewCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(735.0),
                       alignment: .center)
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

struct AllReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        AllReviewsView()
    }
}
