import SwiftUI

struct PaymentPaypalView: View {
    @StateObject var paymentPaypalViewModel = PaymentPaypalViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    HStack {
                        TextField(StringConstants.kLblJonathan3,
                                  text: $paymentPaypalViewModel.nameText)
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
                    HStack {
                        Text(StringConstants.kLblUserEmailCom)
                            .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.BlueGray80001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowdown")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(15.0))
                    Image("image_not_found")
                        .resizable()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(30.0))
                    Text(StringConstants.kLblNext)
                        .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .padding(.trailing, getRelativeWidth(145.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.vertical, getRelativeHeight(25.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                               alignment: .center)
                        .background(ColorConstants.IndigoA400)
                        .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(266.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct PaymentPaypalView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentPaypalView()
    }
}
