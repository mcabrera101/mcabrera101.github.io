//
//  Tile.swift
//  Crossword
//
//  Created by Miguel Cabrera on 5/16/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//

import SwiftUI
class Tile: Identifiable,Codable,Equatable, ObservableObject{
    static func == (lhs:  Tile, rhs:  Tile) -> Bool {
        return lhs.name == rhs.name && lhs.id == rhs.id && lhs.value == rhs.value && lhs.num == rhs.num
    }
    
    var name: String = ""
    var id = UUID()
    var value: String = ""
    var num: Int = 0
    

}

class Tiles: ObservableObject{
    @Published var tiles = [Tile]()
    @Published var queue = [Tile]()
   
    func xw_gen(x: Int, y: Int) -> String{
        let cross = CrosswordsGenerator(columns: 13, rows: 13, words: ["ASIF", "CAIRO", "CHOO", "LEIF", "ALTER", "TINE", "ERMA", "MAH", "THINS", "KNOCK", "PLEA", "AVE", "EIN", "OTS", "SLY", "ZAC", "FOP", "FIR", "IOS", "TETE", "LETAT", "ASKME", "DOM", "LOAN", "MINI", "GODNO", "SULU", "ADOS", "GREEN", "GETS",
        "GRE", "SORT", "SHINE", "IONS", "FOE", "GLENS", "KEN", "ADHOC", "IOR",
        "ARM", "SKEET", "SANDWEDGE",
        "BOOTCAMPS", "LALALA", "EITHER",
        "CNN", "FAT", "REDDEN", "ATONED", "MANUP", "ISNOT",
        "AIDE", "EGGS", "MAG", "ORA"])
        
        cross.generate()
        let s = cross.getCell( x, row: y)

        return s
        
    }

    static let saveKey = "Saved Tiles"

    init() {
        if let data = UserDefaults.standard.data(forKey: Self.saveKey) {
            if let decoded = try? JSONDecoder().decode([Tile].self, from: data) {
                self.tiles = decoded
                return
            }
        }
    }
    
    private func save(){
        if let encoded = try? JSONEncoder().encode(tiles){
            UserDefaults.standard.set(encoded, forKey: Self.saveKey)
        }
    }

    func add(_ tile:  Tile){
        self.tiles.append(tile)
        save()
    }
    func remove( tile:  Tile) {
        if let index = tiles.firstIndex(of: tile) {
            self.tiles.remove(at: index)
        }
        UserDefaults.standard.removeObject(forKey: Self.saveKey)
    }
    
    func deleteItems(at offsets: IndexSet) {
        self.tiles.remove(atOffsets: offsets)
        save()
    }
    
    func process (_  Tile:  Tile){
        queue.insert( Tile, at: 0)
    }
    

    
    

   
    
    
}

struct Tile_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
