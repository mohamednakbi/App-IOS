import SwiftUI

struct FormDetailView: View {
    @StateObject var formDetailViewModel = FormDetailViewModel()
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
                        Text(StringConstants.kLblAddListing)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgHiJoshFillD)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(309.0), height: getRelativeHeight(70.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(11.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                        HStack {
                            TextField(StringConstants.kLblTheLodgeHouse,
                                      text: $formDetailViewModel.formpasswordText)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .padding()
                            Image("img_mail")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .cornerRadius(0.0)
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
                        .padding(.top, getRelativeHeight(39.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        Text(StringConstants.kLblListingType)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(36.0))
                            .padding(.leading, getRelativeWidth(11.0))
                        Text("layout")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(51.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgPropertyCatego)
                            .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(35.0))
                            .padding(.leading, getRelativeWidth(11.0))
                        Text("layout")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(114.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(11.0))
                        Image("image_not_found")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(82.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(641.0),
                           alignment: .center)
                    Button(action: {
                        formDetailViewModel.nextScreen = "AddLocationView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblNext)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(145.0))
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
                    NavigationLink(destination: AddLocationView(),
                                   tag: "AddLocationView",
                                   selection: $formDetailViewModel.nextScreen,
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

struct FormDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FormDetailView()
    }
}
