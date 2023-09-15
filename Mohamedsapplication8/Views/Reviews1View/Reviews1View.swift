import SwiftUI

struct Reviews1View: View {
    @StateObject var reviews1ViewModel = Reviews1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                        Text(StringConstants.kLblReviews)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                ZStack(alignment: .leading) {
                                    Image("img_shape_160x144_8")
                                        .resizable()
                                        .frame(width: getRelativeWidth(168.0),
                                               height: getRelativeHeight(104.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                                   bottomLeft: 15.0,
                                                                   bottomRight: 15.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Button(action: {}, label: {
                                            Image("img_location_red_a200")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.WhiteA700C6))
                                        HStack {
                                            Image("img_buttoncategory")
                                                .resizable()
                                                .frame(width: getRelativeWidth(11.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblApartment)
                                                .font(FontScheme
                                                    .kRalewayMedium(size: getRelativeHeight(8.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray100)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(43.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(6.0))
                                        }
                                        .frame(width: getRelativeWidth(74.0),
                                               height: getRelativeHeight(25.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.BlueGray700Af))
                                        .padding(.top, getRelativeHeight(38.0))
                                    }
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(88.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                    .padding(.trailing, getRelativeWidth(86.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(104.0), alignment: .center)
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgSkyDandelions)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(93.0),
                                               height: getRelativeHeight(35.0),
                                               alignment: .topLeading)
                                    HStack {
                                        Image("img_star_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeWidth(9.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl49)
                                            .font(FontScheme
                                                .kMontserratBold(size: getRelativeHeight(8.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(13.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(10.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(7.0))
                                    HStack {
                                        Image("img_location_deep_orange_a200")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeWidth(9.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kMsgJakartaIndone)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(8.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.BlueGray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(66.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(77.0),
                                           height: getRelativeHeight(10.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                }
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(69.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(33.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(120.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.trailing)
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            Layout8Cell()
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
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(33.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            Layout9Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(327.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                        }
                        .frame(width: getRelativeWidth(351.0), alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(24.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ReviewsGalleryView(),
                                   tag: "ReviewsGalleryView",
                                   selection: $reviews1ViewModel.nextScreen,
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

struct Reviews1View_Previews: PreviewProvider {
    static var previews: some View {
        Reviews1View()
    }
}
