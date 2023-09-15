import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack {
                        HStack {
                            Picker(StringConstants.kMsgJakartaIndone,
                                   selection: $homeViewModel.countryPicker1) {
                                ForEach(homeViewModel.countryPicker1Values, id: \.self) { value in
                                    Text(value)
                                }
                                .onTapGesture {
                                    homeViewModel.isSelectLocationViewShow = true
                                }
                            }
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .font(.system(size: getRelativeHeight(10)))
                            .pickerStyle(MenuPickerStyle())
                            HStack {
                                ZStack(alignment: .topTrailing) {
                                    Image("img_notification")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.all, getRelativeWidth(15.0))
                                        .padding(.vertical, getRelativeHeight(15.0))
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    VStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(6.0),
                                                   height: getRelativeWidth(6.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                                       bottomLeft: 3.0,
                                                                       bottomRight: 3.0)
                                                    .fill(ColorConstants.RedA200))
                                            .padding(.horizontal, getRelativeWidth(3.0))
                                    }
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .topTrailing)
                                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                               bottomLeft: 6.0, bottomRight: 6.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.bottom, getRelativeHeight(28.0))
                                    .padding(.leading, getRelativeWidth(25.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                        bottomLeft: 25.0, bottomRight: 25.0)
                                        .stroke(ColorConstants.Gray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                           bottomLeft: 25.0, bottomRight: 25.0)
                                        .fill(ColorConstants.Gray100))
                                Image("img_shape_50x50_11")
                                    .resizable()
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeWidth(50.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.leading, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(50.0), alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Group {
                                    Text(StringConstants.kMsgHeyJonathan)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(25.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(279.0),
                                               height: getRelativeHeight(75.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    HStack {
                                        Spacer()
                                        Image("img_search_black_900")
                                            .resizable()
                                            .frame(width: getRelativeWidth(14.0),
                                                   height: getRelativeWidth(14.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(27.0))
                                            .padding(.bottom, getRelativeHeight(28.0))
                                            .padding(.leading, getRelativeWidth(18.0))
                                            .padding(.trailing, getRelativeWidth(14.0))
                                        TextField(StringConstants.kLblFindLocation,
                                                  text: $homeViewModel.formsearchempty)
                                            .font(FontScheme
                                                .kRalewayRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Indigo200)
                                            .padding()
                                        Image("img_upload")
                                            .resizable()
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeWidth(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(24.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(11.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(322.0),
                                           height: getRelativeHeight(69.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700Cc))
                                    .shadow(color: ColorConstants.Indigo100B2, radius: 80, x: 0,
                                            y: 17)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.trailing, getRelativeWidth(26.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 3, id: \.self) { index in
                                                    LayoutCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(27.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    ItemPromotionCell()
                                                        .onTapGesture {
                                                            homeViewModel
                                                                .nextScreen = "PromotionView"
                                                        }
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(19.0))
                                    HStack {
                                        Text(StringConstants.kMsgFeaturedEstate)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(154.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblViewAll)
                                            .font(FontScheme
                                                .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.IndigoA400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(38.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(22.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(34.0))
                                    .padding(.trailing, getRelativeWidth(23.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    RowshapeCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(19.0))
                                    HStack {
                                        Text(StringConstants.kLblTopLocations)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(127.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblExplore)
                                            .font(FontScheme
                                                .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.IndigoA400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(38.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.vertical, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(22.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(36.0))
                                    .padding(.trailing, getRelativeWidth(24.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 3, id: \.self) { index in
                                                    Layout1Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(17.0))
                                }
                                Group {
                                    HStack {
                                        Text(StringConstants.kMsgTopEstateAgen)
                                            .font(FontScheme
                                                .kRalewayBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.BlueGray80001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(154.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblExplore)
                                            .font(FontScheme
                                                .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.IndigoA400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(38.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(6.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(22.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(36.0))
                                    .padding(.trailing, getRelativeWidth(24.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 4, id: \.self) { index in
                                                    PhotosUserCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                    .padding(.top, getRelativeHeight(17.0))
                                    Text(StringConstants.kMsgExploreNearby)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(212.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(36.0))
                                    ScrollView(.vertical, showsIndicators: false) {
                                        VStack {
                                            LazyVGrid(columns: [SwiftUI.GridItem(),
                                                                SwiftUI.GridItem()],
                                                      spacing: 7.0) {
                                                ForEach(0 ... 3, id: \.self) { index in
                                                    ColumnshapeCell()
                                                        .onTapGesture {
                                                            homeViewModel
                                                                .nextScreen = "PropertyDetailsView"
                                                        }
                                                }
                                            }
                                        }
                                    }
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.trailing, getRelativeWidth(24.0))
                                    .fixedSize(horizontal: false, vertical: false)
                                }
                            }
                            .frame(width: getRelativeWidth(351.0), alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(24.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: PropertyDetailsView(),
                                       tag: "PropertyDetailsView",
                                       selection: $homeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: PromotionView(),
                                       tag: "PromotionView",
                                       selection: $homeViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if homeViewModel.isSelectLocationViewShow {
                BottomSheetView(isOpen: $homeViewModel.isSelectLocationViewShow, content: {
                    SelectLocationView(selectLocationViewModel: SelectLocationViewModel(_isOpen: $homeViewModel
                            .isSelectLocationViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
