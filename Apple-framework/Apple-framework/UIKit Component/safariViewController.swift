//
//  safariViewController.swift
//  Apple-framework
//
//  Created by Arohi on 01/11/24.
//

import SwiftUI
import SafariServices

struct SafariViewController: UIViewControllerRepresentable{
    var url : URL
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    typealias UIViewControllerType = SFSafariViewController
    
    
}
