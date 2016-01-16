//
//  MyViewController.swift
//  BookShop
//
//  Created by Arthur on 05/01/16.
//  Copyright © 2016 Arthur. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demotData()
        
        let image = UIImage(named: "onlyLogo")
        navigationItem.titleView = UIImageView(image: image)
        

        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    func demotData(){
        let book1: Book = Book(autor: "Ludolf Hilter",titel: "Buch 123 456 789")
        let book2: Book = Book(autor: "Madolf Hilter",titel: "Buch 2")
        let book3: Book = Book(autor: "Radolf Hilter",titel: "Buch 3")
        let book4: Book = Book(autor: "Ludolf Hilter",titel: "Buch 4")
        let book5: Book = Book(autor: "Madolf Hilter",titel: "Buch 5")
        let book6: Book = Book(autor: "Radolf Hilter",titel: "Buch 6")
        let book7: Book = Book(autor: "Ludolf Hilter",titel: "Buch 7")
        let book8: Book = Book(autor: "Madolf Hilter",titel: "Buch 8")
        let book9: Book = Book(autor: "Radolf Hilter",titel: "Buch 9")
        let book10: Book = Book(autor: "Ludolf Hilter",titel: "Buch 10")
        let book11: Book = Book(autor: "Madolf Hilter",titel: "Buch 11")
        let book12: Book = Book(autor: "Radolf Hilter",titel: "Buch 12")
        let book13: Book = Book(autor: "Ludolf Hilter",titel: "Buch 13")
        let book14: Book = Book(autor: "Madolf Hilter",titel: "Buch 14")
        let book15: Book = Book(autor: "Radolf Hilter",titel: "Buch 15")
        
        self.books = [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12, book13, book14, book15]
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if books != nil{
            return books!.count
        }
        else {
            return 0
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
            let cell: BookCell = collectionView.dequeueReusableCellWithReuseIdentifier("BookCell", forIndexPath: indexPath) as! BookCell
        let currentBook: Book = self.books![indexPath.row]
        cell.bookImageView.image = UIImage(named: currentBook.titel)
        cell.bookLabel.text = currentBook.titel
        
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
