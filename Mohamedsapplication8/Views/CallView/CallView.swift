import SwiftUI

struct CallView: View {
    @StateObject var callViewModel = CallViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("img_arrowleft")
                })
                .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(ColorConstants.Gray100))
                .padding(.leading, getRelativeWidth(24.0))
                Text(StringConstants.kLblMilano)
                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(25.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(40.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLbl1225)
                            .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(11.0))
                            .padding(.vertical, getRelativeHeight(5.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Indigo200))
                            .padding(.top, getRelativeHeight(13.0))
                    }
                })
                .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.Indigo200))
                .padding(.top, getRelativeHeight(13.0))
                Text("Group6783")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(129.0))
                VStack {
                    ZStack {
                        Image("img_shape_130x130")
                            .resizable()
                            .frame(width: getRelativeWidth(130.0), height: getRelativeWidth(130.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                            .padding(.all, getRelativeWidth(13.0))
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(156.0), height: getRelativeWidth(156.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 78.0, topRight: 78.0, bottomLeft: 78.0,
                                               bottomRight: 78.0)
                            .fill(ColorConstants.Indigo20067))
                }
                .frame(width: getRelativeWidth(192.0), height: getRelativeWidth(192.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 96.0, topRight: 96.0, bottomLeft: 96.0,
                                           bottomRight: 96.0)
                        .fill(ColorConstants.Indigo20063))
                .padding(.horizontal, getRelativeWidth(92.0))
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            Image("img_volume_blue_gray_800_01")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.WhiteA700))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_iconmicmute_blue_gray_800_01")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblEndCall)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(83.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(25.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(230.0),
                                       height: getRelativeHeight(70.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 35.0, topRight: 35.0,
                                                           bottomLeft: 35.0, bottomRight: 35.0)
                                        .fill(ColorConstants.RedA200))
                                .padding(.top, getRelativeHeight(20.0))
                        }
                    })
                    .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.RedA200))
                    .padding(.top, getRelativeHeight(20.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(188.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 50.0, topRight: 50.0)
                    .fill(ColorConstants.Gray100))
                .padding(.top, getRelativeHeight(122.0))
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

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
