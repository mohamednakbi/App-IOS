import SwiftUI

struct EditProfileView: View {
    @StateObject var editProfileViewModel = EditProfileViewModel()
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
                    Text(StringConstants.kLblEditProfile)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    Image("img_shape_100x100_8")
                        .resizable()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                    HStack {
                        TextField(StringConstants.kMsgJonathanAnders,
                                  text: $editProfileViewModel.usernameText)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .padding()
                        Image("img_user_20x20")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
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
                    .padding(.top, getRelativeHeight(30.0))
                    HStack {
                        TextField(StringConstants.kMsg1234578901234,
                                  text: $editProfileViewModel.phonenumberText)
                            .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .padding()
                        Image("img_trash_blue_gray_800_01")
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
                    .padding(.top, getRelativeHeight(15.0))
                    Picker(StringConstants.kLblUserEmailCom,
                           selection: $editProfileViewModel.emailPicker1) {
                        ForEach(editProfileViewModel.emailPicker1Values, id: \.self) { value in
                            Text(value)
                        }
                    }
                    .foregroundColor(ColorConstants.BlueGray80001)
                    .font(.system(size: getRelativeHeight(12)))
                    .pickerStyle(MenuPickerStyle())
                    HStack {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblUnlink)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .padding(.trailing, getRelativeWidth(42.0))
                                    .padding(.vertical, getRelativeHeight(27.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(158.0),
                                           height: getRelativeHeight(70.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.BlueGray80001))
                                    .padding(.trailing, getRelativeWidth(5.0))
                            }
                        })
                        .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.BlueGray80001))
                        .padding(.trailing, getRelativeWidth(5.0))
                        Spacer()
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLink)
                                    .font(FontScheme
                                        .kRalewaySemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .padding(.trailing, getRelativeWidth(49.0))
                                    .padding(.vertical, getRelativeHeight(27.0))
                                    .foregroundColor(ColorConstants.BlueGray80001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(158.0),
                                           height: getRelativeHeight(70.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.Gray100))
                                    .padding(.leading, getRelativeWidth(5.0))
                            }
                        })
                        .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(ColorConstants.Gray100))
                        .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(641.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblChooseLocation)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .padding(.trailing, getRelativeWidth(97.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(25.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
