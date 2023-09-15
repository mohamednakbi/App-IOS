import SwiftUI

struct ChatView: View {
    @StateObject var chatViewModel = ChatViewModel()
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
                        VStack {
                            HStack {
                                ZStack(alignment: .topTrailing) {
                                    Image("img_shape_50x50_7")
                                        .resizable()
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    VStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeWidth(8.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                                       bottomLeft: 4.0,
                                                                       bottomRight: 4.0)
                                                    .fill(ColorConstants.GreenA400))
                                            .padding(.horizontal, getRelativeWidth(2.0))
                                    }
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .topTrailing)
                                    .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                            bottomLeft: 6.0, bottomRight: 6.0)
                                            .stroke(ColorConstants.Gray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                               bottomLeft: 6.0, bottomRight: 6.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.bottom, getRelativeHeight(38.0))
                                    .padding(.leading, getRelativeWidth(38.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0))
                                VStack {
                                    Text(StringConstants.kLblMilano)
                                        .font(FontScheme
                                            .kRalewayBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray80001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(48.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblOnline)
                                        .font(FontScheme
                                            .kRalewaySemiBold(size: getRelativeHeight(10.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(33.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.trailing, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeHeight(32.94))
                                .padding(.leading, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(50.0))
                        }
                        .padding(.leading, getRelativeWidth(10.0))
                        Button(action: {
                            chatViewModel.nextScreen = "CallView"
                        }, label: {
                            Image("img_trash_blue_gray_800_01")
                        })
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                           alignment: .leading)
                    VStack(alignment: .trailing, spacing: 0) {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgDecember1220)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .padding(.horizontal, getRelativeWidth(12.0))
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(124.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Indigo200))
                                    .padding(.top, getRelativeHeight(6.0))
                            }
                        })
                        .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Indigo200))
                        .padding(.top, getRelativeHeight(6.0))
                        HStack {
                            ZStack(alignment: .leading) {
                                Image("img_shape_104x128_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(128.0),
                                           height: getRelativeHeight(104.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Button(action: {}, label: {
                                        Image("img_location_red_a200")
                                    })
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.WhiteA700C6))
                                    HStack {
                                        Image("img_buttoncategory")
                                            .resizable()
                                            .frame(width: getRelativeWidth(11.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblApartment)
                                            .font(FontScheme
                                                .kRalewayMedium(size: getRelativeHeight(8.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(6.0))
                                    }
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(25.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.BlueGray700Af))
                                    .padding(.top, getRelativeHeight(38.0))
                                }
                                .frame(width: getRelativeWidth(74.0),
                                       height: getRelativeHeight(88.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(8.0))
                                .padding(.trailing, getRelativeWidth(46.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(104.0),
                                   alignment: .center)
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgSkyDandelions)
                                    .font(FontScheme.kRalewayBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(93.0),
                                           height: getRelativeHeight(35.0), alignment: .topLeading)
                                HStack {
                                    Image("img_star_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(9.0),
                                               height: getRelativeWidth(9.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLbl49)
                                        .font(FontScheme
                                            .kMontserratBold(size: getRelativeHeight(8.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(10.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(7.0))
                                HStack {
                                    Image("img_location_deep_orange_a200")
                                        .resizable()
                                        .frame(width: getRelativeWidth(9.0),
                                               height: getRelativeWidth(9.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kMsgJakartaIndone)
                                        .font(FontScheme
                                            .kRalewayRegular(size: getRelativeHeight(8.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.BlueGray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                }
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(10.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(6.0))
                            }
                            .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(69.0),
                                   alignment: .top)
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(23.0))
                        }
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(120.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(50.0))
                        VStack {
                            VStack {
                                Text(StringConstants.kMsgLoremIpsumDol3)
                                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueGray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(243.0),
                                           height: getRelativeHeight(37.0), alignment: .topTrailing)
                            }
                            .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(72.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, bottomLeft: 16.0,
                                                       bottomRight: 16.0)
                                    .fill(ColorConstants.WhiteA700))
                            HStack {
                                Image("img_checkmark_16x16")
                                    .resizable()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl1045)
                                    .font(FontScheme
                                        .kMontserratMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Indigo200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(234.0))
                            }
                            .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(96.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(50.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                TextField(StringConstants.kMsgTemporIncididu,
                                          text: $chatViewModel.descriptiononeText)
                                    .font(FontScheme.kRalewayMedium(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(92.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topRight: 16.0, bottomLeft: 16.0,
                                                       bottomRight: 16.0)
                                    .fill(ColorConstants.BlueGray80001))
                            Text(StringConstants.kLbl1046)
                                .font(FontScheme.kMontserratMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Indigo200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(115.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.trailing, getRelativeWidth(17.0))
                        Text("Group6662")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(215.0))
                        HStack {
                            Spacer()
                            Image("img_camera_blue_gray_600")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            TextField(StringConstants.kLblSaySomething,
                                      text: $chatViewModel.formchatText)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Indigo200)
                                .padding()
                            Image("img_send")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(22.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(50.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.WhiteA700))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(724.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 24.0, topRight: 24.0)
                        .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(11.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CallView(),
                                   tag: "CallView",
                                   selection: $chatViewModel.nextScreen,
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
