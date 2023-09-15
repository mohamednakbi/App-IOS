import Foundation
import SwiftUI

class UserEmptyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formtextfillText: String = ""
    @Published var formtextemptyText: String = ""
    @Published var emailText: String = ""
    @Published var isUserSuccessViewShow: Bool = false
}
