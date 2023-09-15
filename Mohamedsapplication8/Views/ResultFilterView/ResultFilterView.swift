import SwiftUI

struct ResultFilterView: View {
    @StateObject var resultFilterViewModel = ResultFilterViewModel()
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
                    Text(StringConstants.kLblSearchResults)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                    ZStack(alignment: .center) {
                        Image("img_settings")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.all, getRelativeWidth(15.0))
                            .padding(.vertical, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        Button(action: {}, label: {
                            Image("img_settings_50x50")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.IndigoA400))
                    }
                    .hideNavigationBar()
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        TextField(StringConstants.kLblModernHouse,
                                  text: $resultFilterViewModel.formsearch)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .padding()
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.horizontal, getRelativeWidth(14.0))
                    HStack {
                        Text(StringConstants.kLblFound)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                        Text(StringConstants.kLbl128)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(5.0))
                        Text(StringConstants.kLblEstates)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(5.0))
                        Text("Group6695")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(40.0))
                        HStack {
                            ZStack {
                                Image("img_menu")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            ZStack {
                                Image("img_menu_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.leading, getRelativeWidth(5.0))
                        }
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.Gray100))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(14.0))
                    Text("filter")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    Rowshape6Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(14.0))
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

struct ResultFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ResultFilterView()
    }
}
