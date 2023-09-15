import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Image("img_vector_gray_100")
                .resizable()
                .frame(width: getRelativeWidth(136.0), height: getRelativeHeight(100.0),
                       alignment: .center)
                .scaledToFit()
                .clipped()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Image("img_splashscreen")
            .resizable()
            .scaledToFill())
        .hideNavigationBar()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
