import SwiftUI

struct ListingsView: View {
    @StateObject var listingsViewModel = ListingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    HStack {
                        Text(StringConstants.kLbl302)
                            .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                        Text(StringConstants.kLblListings2)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(18.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(5.0))
                        Text("Group6839")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(40.0))
                        HStack {
                            Image("img_menu")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                            ZStack {
                                Image("img_menu_12x12")
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
                            .padding(.leading, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.Gray100))
                        Button(action: {}, label: {
                            Image("img_plus_10x10")
                        })
                        .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.IndigoA400))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                      spacing: 7.0) {
                                ForEach(0 ... 3, id: \.self) { index in
                                    Columnshape6Cell()
                                }
                            }
                        }
                    }
                    .padding(.top, getRelativeHeight(20.0))
                    .fixedSize(horizontal: false, vertical: false)
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(532.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(23.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct ListingsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingsView()
    }
}
