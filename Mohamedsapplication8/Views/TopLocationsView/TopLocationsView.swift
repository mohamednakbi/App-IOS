import SwiftUI

struct TopLocationsView: View {
    @StateObject var topLocationsViewModel = TopLocationsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image("img_arrowleft")
                            })
                            .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                            Text(StringConstants.kLblTopLocations)
                                .font(FontScheme.kRalewayBold(size: getRelativeHeight(25.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(176.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(42.0))
                            Text(StringConstants.kMsgFindTheBestR)
                                .font(FontScheme
                                    .kRalewayRomanRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(262.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                              spacing: 7.0) {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            Columnshape4Cell()
                                                .onTapGesture {
                                                    topLocationsViewModel
                                                        .nextScreen =
                                                        "TopLocationsLocationDetailView"
                                                }
                                        }
                                    }
                                }
                            }
                            .padding(.top, getRelativeHeight(36.0))
                            .fixedSize(horizontal: false, vertical: false)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: TopLocationsLocationDetailView(),
                                   tag: "TopLocationsLocationDetailView",
                                   selection: $topLocationsViewModel.nextScreen,
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

struct TopLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        TopLocationsView()
    }
}
