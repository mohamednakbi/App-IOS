import Foundation
import SwiftUI

class FormOTPViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var otpviewOTP1: String = ""
}
