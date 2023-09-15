//
//  Mohamedsapplication8App.swift
//  Mohamedsapplication8

import SwiftUI

@main
struct Mohamedsapplication8App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
