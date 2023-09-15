import SwiftUI

struct HorizontalView: View {
    @StateObject var horizontalViewModel = HorizontalViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                HStack {
                    Text(StringConstants.kLblMyFavorite)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(18.0))
                    Button(action: {}, label: {
                        Image("img_ae45615de12342ab99f19311ea988aa7")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.leading, getRelativeWidth(75.0))
                }
                .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(50.0),
                       alignment: .trailing)
                HStack {
                    Text(StringConstants.kLbl0)
                        .font(FontScheme.kMontserratBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.bottom, getRelativeHeight(9.0))
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
                    Text("Group6809")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(40.0))
                    HStack {
                        Image("img_menu")
                            .resizable()
                            .frame(width: getRelativeWidth(12.0), height: getRelativeWidth(12.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
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
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.leading, getRelativeWidth(17.0))
                    }
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                               bottomRight: 20.0)
                            .fill(ColorConstants.Gray100))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(40.0),
                       alignment: .trailing)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(3.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 2, id: \.self) { index in
                                Rowshape5Cell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(329.0), alignment: .trailing)
                .padding(.top, getRelativeHeight(23.0))
                .padding(.leading, getRelativeWidth(4.0))
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

struct HorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalView()
    }
}
