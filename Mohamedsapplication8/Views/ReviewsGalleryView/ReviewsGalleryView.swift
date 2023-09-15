import SwiftUI

struct ReviewsGalleryView: View {
    @StateObject var reviewsGalleryViewModel = ReviewsGalleryViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("img_arrowleft")
            })
            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(ColorConstants.WhiteA700Cc))
            .padding(.leading, getRelativeWidth(25.0))
            Text("Group6951")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(291.0))
            HStack {
                ZStack {
                    Image("img_rewind")
                        .resizable()
                        .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(7.39))
                        .padding(.trailing, getRelativeWidth(11.61))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(83.0),
                       alignment: .center)
                .background(RoundedCorners(topRight: 18.0, bottomRight: 18.0)
                    .fill(ColorConstants.WhiteA7003f))
                Spacer()
                ZStack {
                    Image("img_rewind_22x22")
                        .resizable()
                        .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(11.62))
                        .padding(.trailing, getRelativeWidth(7.38))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(83.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 18.0, bottomLeft: 18.0)
                    .fill(ColorConstants.WhiteA7003f))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(83.0),
                   alignment: .leading)
            HStack {
                HStack {
                    Image("img_shape_50x50_6")
                        .resizable()
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblSamuelElla)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                        RatingBarView(selected: $reviewsGalleryViewModel.ratingbarRating,
                                      heightWeightImage: getRelativeWidth(10.0))
                            .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(10.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(28.0),
                           alignment: .top)
                    .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(70.0),
                       alignment: .bottom)
                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                           bottomRight: 35.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.vertical, getRelativeHeight(190.0))
                Spacer()
                VStack {
                    Image("img_shape_60x60_6")
                        .resizable()
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(63.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0))
                    Image("img_shape_60x60_5")
                        .resizable()
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(63.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0))
                        .padding(.top, getRelativeHeight(8.0))
                    Image("img_shape_60x60_4")
                        .resizable()
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(63.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0))
                        .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(205.0),
                       alignment: .bottom)
                .padding(.top, getRelativeHeight(56.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(309.0),
                   alignment: .leading)
            .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.BlueGray900E5,
                                                                   ColorConstants.BlueGray60000]),
                startPoint: .topLeading, endPoint: .bottomTrailing))
            .padding(.top, getRelativeHeight(55.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Image("img_reviewsgallery")
            .resizable()
            .scaledToFill())
        .hideNavigationBar()
    }
}

struct ReviewsGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsGalleryView()
    }
}
