import SwiftUI

struct AddReviewEmptyView: View {
    @StateObject var addReviewEmptyViewModel = AddReviewEmptyViewModel()
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
                        Text(StringConstants.kLblAddReview)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgHiHowWasYou)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(75.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgLoremIpsumDol)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(23.0))
                        HStack {
                            RatingBarView(selected: $addReviewEmptyViewModel.ratingbarRating,
                                          heightWeightImage: getRelativeWidth(40.0))
                                .frame(width: getRelativeWidth(228.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                            Text(StringConstants.kLbl00)
                                .font(FontScheme
                                    .kMontserratExtraBold(size: getRelativeHeight(25.0)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(31.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(15.0))
                        }
                        .frame(width: getRelativeWidth(286.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(51.0))
                        .padding(.trailing, getRelativeWidth(41.0))
                        HStack {
                            TextField(StringConstants.kMsgWriteYourExpe,
                                      text: $addReviewEmptyViewModel.formtextareaText)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Indigo200)
                                .padding()
                            Image("img_signal")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(7.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Gray400, lineWidth: 1))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.vertical, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(6.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(120.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(20.0))
                        ZStack {
                            Image("img_plus")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.all, getRelativeWidth(29.0))
                                .padding(.vertical, getRelativeHeight(29.0))
                                .padding(.horizontal, getRelativeWidth(29.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(78.0), height: getRelativeWidth(78.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.vertical, getRelativeHeight(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(641.0),
                           alignment: .center)
                    Button(action: {
                        addReviewEmptyViewModel.nextScreen = "AddReviewFillView"
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
                                .padding(.bottom, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.bottom, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AddReviewFillView(),
                                   tag: "AddReviewFillView",
                                   selection: $addReviewEmptyViewModel.nextScreen,
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

struct AddReviewEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        AddReviewEmptyView()
    }
}
