import SwiftUI

struct SummaryChangePaymentView: View {
    @StateObject var summaryChangePaymentViewModel =
        SummaryChangePaymentViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                VStack {
                    Divider()
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .background(ColorConstants.BlueGray600)
                    Text(StringConstants.kLblChangePayment)
                        .font(FontScheme.kRalewayBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.BlueGray80001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.leading, getRelativeWidth(24.0))
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    WalletVisa1Cell()
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                    .padding(.top, getRelativeHeight(17.0))
                    Button(action: {
                        summaryChangePaymentViewModel.isSummarySuccessViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSelectPayment)
                                .font(FontScheme.kRalewaySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(99.0))
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
                                .padding(.top, getRelativeHeight(50.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(70.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 35.0, topRight: 35.0, bottomLeft: 35.0,
                                               bottomRight: 35.0)
                            .fill(ColorConstants.IndigoA400))
                    .padding(.top, getRelativeHeight(50.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(427.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                           bottomRight: 50.0)
                        .fill(ColorConstants.WhiteA700))
            }
            .frame(width: UIScreen.main.bounds.width)
            if summaryChangePaymentViewModel.isSummarySuccessViewShow {
                BottomSheetView(isOpen: $summaryChangePaymentViewModel.isSummarySuccessViewShow,
                                content: {
                                    SummarySuccessView(summarySuccessViewModel: SummarySuccessViewModel(_isOpen: $summaryChangePaymentViewModel
                                            .isSummarySuccessViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct SummaryChangePaymentView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryChangePaymentView()
    }
}
