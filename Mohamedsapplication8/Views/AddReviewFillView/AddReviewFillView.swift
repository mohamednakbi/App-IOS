import SwiftUI

struct AddReviewFillView: View {
    @StateObject var addReviewFillViewModel = AddReviewFillViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
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
                        Text(StringConstants.kLblAddReview)
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
                            Text(StringConstants.kMsgHiHowWasYou)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(303.0),
                                       height: getRelativeHeight(75.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgLoremIpsumDol)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(158.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                            HStack {
                                RatingBarView(selected: $addReviewFillViewModel.ratingbarRating,
                                              heightWeightImage: getRelativeWidth(40.0))
                                    .frame(width: getRelativeWidth(228.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                Text(StringConstants.kLbl40)
                                    .font(FontScheme
                                        .kMontserratExtraBold(size: getRelativeHeight(25.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(44.0),
                                           height: getRelativeHeight(31.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(287.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(51.0))
                            .padding(.trailing, getRelativeWidth(40.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLoremIpsumDolor)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(244.0),
                                           height: getRelativeHeight(35.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(10.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Image("img_signal")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeWidth(7.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(48.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(120.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(20.0))
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                              spacing: 9.0) {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            PhotosGallery1Cell()
                                        }
                                    }
                                }
                            }
                            .padding(.top, getRelativeHeight(15.0))
                            .fixedSize(horizontal: false, vertical: false)
                        }
                        .frame(width: getRelativeWidth(327.0), alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(54.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    Button(action: {
                        addReviewFillViewModel.isAddReviewSuccessViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSubmit)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(134.0))
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
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if addReviewFillViewModel.isAddReviewSuccessViewShow {
                BottomSheetView(isOpen: $addReviewFillViewModel.isAddReviewSuccessViewShow,
                                content: {
                                    AddReviewSuccessView(addReviewSuccessViewModel: AddReviewSuccessViewModel(_isOpen: $addReviewFillViewModel
                                            .isAddReviewSuccessViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct AddReviewFillView_Previews: PreviewProvider {
    static var previews: some View {
        AddReviewFillView()
    }
}
