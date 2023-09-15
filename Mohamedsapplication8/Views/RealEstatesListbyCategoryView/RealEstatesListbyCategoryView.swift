import SwiftUI

struct RealEstatesListbyCategoryView: View {
    @StateObject var realEstatesListbyCategoryViewModel = RealEstatesListbyCategoryViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_background")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(330.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image("img_arrowleft")
                            })
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.WhiteA700Cc))
                            .padding(.leading, getRelativeWidth(24.0))
                            Button(action: {}, label: {
                                Image("img_settings")
                            })
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.WhiteA700Cc))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(50.0), alignment: .leading)
                        HStack {
                            Image("img_buttoncategory_25x25")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblVilla)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(26.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(53.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 17.0, topRight: 17.0, bottomLeft: 17.0,
                                                   bottomRight: 17.0)
                                .fill(ColorConstants.BlueGray700Af))
                        .padding(.top, getRelativeHeight(179.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(282.0),
                           alignment: .center)
                    .padding(.all, getRelativeWidth(24.0))
                    .padding(.vertical, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(330.0),
                       alignment: .center)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblTopVilla)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        Rowshape2Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                        .padding(.top, getRelativeHeight(17.0))
                        HStack {
                            Spacer()
                            Image("img_search")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            TextField(StringConstants.kMsgSearchInVilla,
                                      text: $realEstatesListbyCategoryViewModel.formsearchempty)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Indigo200)
                                .padding()
                            Image("img_upload")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(16.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(35.0))
                        .padding(.trailing, getRelativeWidth(24.0))
                        HStack {
                            Text(StringConstants.kLbl120)
                                .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Text(StringConstants.kLblVilla)
                                .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(39.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                            Text("Group6643")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(159.0),
                                       height: getRelativeHeight(40.0))
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
                                ZStack {
                                    Image("img_television_12x12")
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
                                .padding(.leading, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(35.0))
                        .padding(.trailing, getRelativeWidth(24.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 7.0) {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Columnshape3Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.trailing, getRelativeWidth(24.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: getRelativeWidth(351.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(24.0))
                }
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

struct RealEstatesListbyCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RealEstatesListbyCategoryView()
    }
}
