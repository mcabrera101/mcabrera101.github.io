//
//  CouponView.swift
//  Coupon Manager
//
//  Created by Miguel Cabrera on 3/27/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI

enum SheetPicker{
    case scanner, form
}


struct CouponView: View {
    @EnvironmentObject var coupons: Coupons
    @State private var isShowingScanner = false
    @State var isShowingCouponForm : Bool = false
    @State private var sheetPicker: SheetPicker = .scanner
    @
    
    func handleScan(result: Result<String, CodeScannerView.ScanError>){
        self.isShowingScanner = false
        self.isShowingCouponForm = true
        
        switch result{
        case .success(let code):
            let couponNum = code
            currCpn.barCode = Int(couponNum) ?? 0
            print("added coupon")
            
            
            
            
        case .failure(let error):
            print ("Scanning failed")
        }
    }


    

    var body: some View {
        
        NavigationView{
            NavigationLink(destination:AddView(), isActive: $isShowingCouponForm ){
                List{
                    
                    ForEach(coupons.couponL) { coup in

                        VStack(alignment: .leading){

                            Text(coup.name)
                                .font(.headline)

                            Text(String(coup.barCode))
                                .foregroundColor(.secondary)
                                .fixedSize()
                
                            
                        }
                    }
                  }
                    
                .navigationBarTitle("Coupons")
                .navigationBarItems(trailing: Button(action: {
                    self.isShowingScanner = true
                    
                }) {
                    Image(systemName: "qrcode.viewfinder")
                    Text("Scan")
                    
                }) .sheet(isPresented: $isShowingScanner){
                    
                        CodeScannerView(codeTypes: [.code128, .qr, .code93, .code39, .code39Mod43 ], simulatedData: "1800909090", completion: self.handleScan)
                    
                }
                    
            }
            }
        }
    }


struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
        CouponView()
    }
}
