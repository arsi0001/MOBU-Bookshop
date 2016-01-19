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
        let book1: Book = Book(dateiName: "Buch 123 456 789", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book2: Book = Book(dateiName: "Buch 2", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book3: Book = Book(dateiName: "Buch 3", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book4: Book = Book(dateiName: "Buch 4", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book5: Book = Book(dateiName: "Buch 5", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book6: Book = Book(dateiName: "Buch 6", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book7: Book = Book(dateiName: "Buch 7", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book8: Book = Book(dateiName: "Buch 8", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book9: Book = Book(dateiName: "Buch 9", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book10: Book = Book(dateiName: "Buch 10", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book11: Book = Book(dateiName: "Buch 11", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book12: Book = Book(dateiName: "Buch 12", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book13: Book = Book(dateiName: "Buch 13", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book14: Book = Book(dateiName: "Buch 14", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        let book15: Book = Book(dateiName: "Buch 15", autorName: "Ludolf Hilter",titelName: "Blumenkorb", preisName: "15.00", beschreibungName: "Super BUCH", merkmaleName: "Größe 20x15mm", rezensionName: "Super Buch")
        
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
        cell.bookImageView.image = UIImage(named: currentBook.dateiName)
        cell.bookLabel.text = currentBook.titelName
        
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        /*if segue.identifier == "toDetailView" {
            let detailVC: DetailViewController? = segue.destinationViewController as? DetailViewController
            
            if detailVC != nil {
                let item: Book = self.books![self.collectionView.indexPathsForSelectedItems()![0].row]
                
                detailVC?.title = item.autor
                detailVC?.imageName = item.titel
            }
        }*/
        
        /*if segue.identifier == "toArtikelView" {
            let detailVC: ArtikelDetailTVController? = segue.destinationViewController as? ArtikelDetailTVController
            
            if detailVC != nil {
                let item: Book = self.books![self.collectionView.indexPathsForSelectedItems()![0].row]
                
                detailVC?.buchTitel = item.autor
                detailVC?.buchCoverImage = item.titel
            }
        
        
    }*/
        if segue.identifier == "toArtikelView" {
            let detailVC: ArtikelTableViewController? = segue.destinationViewController as? ArtikelTableViewController
            
            if detailVC != nil {
                let item: Book = self.books![self.collectionView.indexPathsForSelectedItems()![0].row]
                
                detailVC?.buchTitelName = item.titelName
                detailVC?.buchImageName = item.dateiName
                detailVC?.buchAutorName = item.autorName
                detailVC?.buchPreisName = item.preisName
                detailVC?.buchBeschreibungName = item.beschreibungName
                detailVC?.buchMerkmaleName = item.merkmaleName
                detailVC?.buchRezensionName = item.rezensionName
            }
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
}
