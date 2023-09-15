import SwiftUI

struct UserEmptyView: View {
    @StateObject var userEmptyViewModel = UserEmptyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
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
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSkip)
                                        .font(FontScheme
                                            .kMontserratRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                        .padding(.vertical, getRelativeHeight(11.0))
                                        .foregroundColor(ColorConstants.BlueGray800)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(38.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                                   bottomLeft: 19.0,
                                                                   bottomRight: 19.0)
                                                .fill(ColorConstants.Gray100))
                                        .padding(.top, getRelativeHeight(7.0))
                                        .padding(.bottom, getRelativeHeight(5.0))
                                }
                            })
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(38.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                       bottomLeft: 19.0, bottomRight: 19.0)
                                    .fill(ColorConstants.Gray100))
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                        Text(StringConstants.kMsgFillYourInfor)
                            .font(FontScheme.kRalewayMedium(size: getRelativeHeight(25.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(72.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(55.0))
                            .padding(.trailing, getRelativeWidth(72.0))
                        Text(StringConstants.kMsgYouCanEditTh)
                            .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.BlueGray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                        VStack {
                            Image("img_user_42x40")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(27.0))
                            Button(action: {}, label: {
                                Image("img_9ce8cff206464d90abe590abdd2875e0")
                            })
                            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.BlueGray80001))
                        }
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                                   bottomRight: 50.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(51.0))
                        HStack {
                            TextField(StringConstants.kMsgJonathanAnders,
                                      text: $userEmptyViewModel.formtextfillText)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.BlueGray80001)
                                .padding()
                            Image("img_user_20x20")
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
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(30.0))
                        HStack {
                            Spacer()
                            Image("img_trash_blue_gray_800_01")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            TextField(StringConstants.kLblMobileNumber,
                                      text: $userEmptyViewModel.formtextemptyText)
                                .font(FontScheme.kRalewayRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Indigo200)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.top, getRelativeHeight(15.0))
                        HStack {
                            TextField(StringConstants.kLblUserEmailCom,
                                      text: $userEmptyViewModel.emailText)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.BlueGray50)
                                .padding()
                            Image("img_mail_1")
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
                                .fill(ColorConstants.BlueGray600))
                        .padding(.top, getRelativeHeight(15.0))
                        Image("img_progressbargradient")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(42.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0),
                           alignment: .center)
                    Button(action: {
                        userEmptyViewModel.isUserSuccessViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblFinish)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(141.0))
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
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if userEmptyViewModel.isUserSuccessViewShow {
                BottomSheetView(isOpen: $userEmptyViewModel.isUserSuccessViewShow, content: {
                    UserSuccessView(userSuccessViewModel: UserSuccessViewModel(_isOpen: $userEmptyViewModel
                            .isUserSuccessViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct UserEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        UserEmptyView()
    }
}
