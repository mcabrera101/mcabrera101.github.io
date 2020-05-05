//
//  ItemStore.swift
//  Homepwner
//
//  Created by Miguel Cabrera on 2/24/20.
//  Copyright © 2020 Miguel Cabrera. All rights reserved.
//
import Foundation

class ItemStore {
    
    var allItems: [Item] = []
    let itemArchiveURL: URL = {
        let documentsDirectories =
            FileManager.default.urls(for: .documentDirectory,
                                     in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("items.archive")
    }()
    
    init() {
        if let archivedItems =
            NSKeyedUnarchiver.unarchiveObject(withFile: itemArchiveURL.path) as? [Item] {
                allItems += archivedItems
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // Get reference to object being moved so you can re-insert it
        let movedItem = allItems[fromIndex]
        
        // Remove item from array
        allItems.remove(at: fromIndex)
        
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.firstIndex(of: item) {
            allItems.remove(at: index)
        }
    }
    
      func saveChanges() -> Bool {
          print("Saving items \(allItems) to: \(itemArchiveURL.path) --- all saved!!!")
        
    //      return NSKeyedArchiver.archiveRootObject(allItems, toFile: itemArchiveURL.path)
        do {
            let data =
              try NSKeyedArchiver.archivedData(withRootObject: allItems,
                                               requiringSecureCoding: false)
            try data.write(to: itemArchiveURL)
            return true
        } catch {
            print("Couldn't write file")
            return false
        }
      }
    
}
