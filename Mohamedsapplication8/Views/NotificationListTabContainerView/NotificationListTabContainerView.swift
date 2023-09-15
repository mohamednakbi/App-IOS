import SwiftUI

struct NotificationListTabContainerView: View {
    @StateObject var notificationListTabContainerViewModel = NotificationListTabContainerViewModel()
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
                    Button(action: {}, label: {
                        Image("img_ae45615de12342ab99f19311ea988aa7")
                    })
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        TabsView(tabs: $notificationListTabContainerViewModel.tabButtonList,
                                 selectedTabIndex: $notificationListTabContainerViewModel
                                     .selectedButtonIndex,
                                 selectedTab: notificationListTabContainerViewModel.tabButtonList[
                                     0
                                 ],
                                 fontSize: 12.0,
                                 fontName: FontScheme
                                     .kRalewaySemiBold(size: getRelativeHeight(12.0)),
                                 selectedFontColor: ColorConstants.BlueGray80001,
                                 unSelectedFontColor: ColorConstants.BlueGray80001,
                                 selectedBackColor: ColorConstants.WhiteA700, cornerRadius: 16.0,
                                 type: .customBackground)
                            .frame(height: getRelativeHeight(50.0))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Gray100))
                        PagerView(content: {
                            NotificationListView()
                            NotificationListView()
                        }, tabIndex: $notificationListTabContainerViewModel.selectedButtonIndex,
                        pagers: $notificationListTabContainerViewModel.tabButtonList)
                            .frame(height: getRelativeHeight(690.0), alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                }
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

struct NotificationListTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListTabContainerView()
    }
}
