//
//  ScanpageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 17/05/22.
//

import SwiftUI

struct ScanpageView: View {
    var body: some View {
        //call UIKit VC
        MainVCView()
    }
}

struct ScanpageView_Previews: PreviewProvider {
    static var previews: some View {
        ScanpageView()
    }
}


//create bridge SwiftUI and UIKit
struct MainVCView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //create view controller object
        return ScanpageViewController()
    }
}


// create view controller
class ScanpageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
