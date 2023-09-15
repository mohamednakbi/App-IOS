import SwiftUI

struct HomeContainerView: View {
    @StateObject var homeContainerViewModel = HomeContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Text("Content")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                Text("bottombar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(ColorConstants.WhiteA700E5)
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
        .onAppear {}
    }
}

struct HomeContainerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContainerView()
    }
}
