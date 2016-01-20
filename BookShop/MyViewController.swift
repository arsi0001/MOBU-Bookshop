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
        let book1: Book = Book(dateiName: "Buch 123 456 789", autorName: "Umberto Eco",titelName: "Nullnummer", preisName: "Preis: 15.00€", beschreibungName: "Mailand, 6. Juni 1992, nachts. Bei dem Journalisten Colonna ist eingebrochen worden. Die Diskette mit brisanten Informationen hat man nicht gefunden, Colonna sieht jetzt sein eigenes Leben bedroht. Auch er spielt ein Doppelspiel: Er soll eine Zeitung lancieren, die mit schmutzigen Gerüchten über die gute Gesellschaft arbeitet. Zugleich schreibt er als Ghostwriter ein Enthüllungsbuch über den programmierten Skandal.",
            merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 240\nErscheinungsdatum: 26.09.2015\nSprache: Deutsch\nISBN 978-3-446-24939-4\nVerlag: Hanser\nMaße(L/B/H): 208/128/25 mm", rezensionName: "Dieses Buch darf man sich nicht entgehen lassen. Wer den Semiotiker kennt wird sicher wieder positiv überrascht sein. Ein Muss !")
        let book2: Book = Book(dateiName: "Buch 2", autorName: "Ellen Berg",titelName: "Mach mir den Garten, Liebling!", preisName: "Preis: 19.00€", beschreibungName: "Die Lust am Gärtnern und am Gärtner… Zur Hölle mit dem Job! Statt der überfälligen Beförderung bekommt Luisa einen Fiesling vor die Nase gesetzt. Sie ist frustriert: 14-Stunden-Arbeitstage und Bürointrigen, wofür das alles? Ausgerechnet jetzt muss sie sich um den Schrebergarten ihrer Tante Ruth kümmern. Geht gar nicht, Komposthaufen statt Karriere ist definitiv keine Lösung.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 300\nErscheinungsdatum: 26.02.2015\nSprache: Deutsch\nISBN 222-3-450-24939-4\nVerlag: Hanser\nMaße(L/B/H): 220/140/25 mm", rezensionName: "Ein typischer Ellen Berg Roman, herrlich sarkastisch, locker, spannend und humorvoll. Der Roman ist flüssig, komplex, temporeich, kurzweilig und fesselnd geschrieben und hat mich von Anfang an gefangen genommen.")
        let book3: Book = Book(dateiName: "Buch 3", autorName: "Lucinda Riley",titelName: "Die Sturmschwestern", preisName: "Preis: 12.49€", beschreibungName: "Der Wind und das Wasser, das sind die großen Leidenschaften in Allys Leben, die sei zu ihrem Beruf gemacht hat: Sie ist Seglerin und hat bei manch riskanter Regatta auf den Meeren der Welt ihren Mut unter Beweis gestellt. Eines Tages aber stirbt völlig überraschend ihr geliebter Vater Pa Salt, und Ally reist zu dem Familiensitz am Genfer See.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 325\nErscheinungsdatum: 12.01.2014\nSprache: Deutsch\nISBN 222-3-490-24939-5\nVerlag: Helfer\nMaße(L/B/H): 220/140/25 mm", rezensionName: "Mich hat auch dieser Band um die sieben Schwestern absolut fasziniert und überzeugt. Mit hinreißenden Protagonisten und traumhaften Kulissen ist dieses Buch ein typisches Meisterwerk von Lucinda Riley. Ich bin schon sehr auf den nächsten Band der Reihe gespannt und kann es kaum erwarten weiter zu lesen.")
        let book4: Book = Book(dateiName: "Buch 4", autorName: "Michael Lüders",titelName: "Wer den Wind sät - Was westliche Politik im Orient anrichtet", preisName: "16.50", beschreibungName: "Wer den Wind sät, wird Sturm ernten - Michael Lüders beschreibt die westlichen Interventionen im Nahen und Mittleren Osten seit der Kolonialzeit und erklärt, was sie mit der aktuellen politischen Situation zu tun haben. Sein neues Buch liest sich wie ein Polit-Thriller - nur leider beschreibt es die Realität. Eine Geschichte erscheint in unterschiedlichem Licht, je nachdem, wo man beginnt sie zu erzählen.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 175\nErscheinungsdatum: 22.12.2015\nSprache: Deutsch\nISBN 244-3-490-24939-5\nVerlag: Helfer\nMaße(L/B/H): 220/140/25 mm", rezensionName: "Die Wahrheit steht nicht in der Bild-Zeitung und ideologisch sehr eng verwandten täglichen beinahe wie zentral gelenkten Veröffentlichungen! Danke für solche Informationen. Sie sind dünn gesäht, aber man kann sie finden.")
        let book5: Book = Book(dateiName: "Buch 5", autorName: "Sebastian Fitzek",titelName: "Passagier 23", preisName: "Preis: 19,95€", beschreibungName: "Jedes Jahr verschwinden auf hoher See rund 20 Menschen spurlos von Kreuzfahrtschiffen. Noch nie kam jemand zurück. Bis jetzt... Martin Schwartz, Polizeipsychologe, hat vor fünf Jahren Frau und Sohn verloren. Es geschah während eines Urlaubs auf dem Kreuzfahrtschiff „Sultan of the Seas“ – niemand konnte ihm sagen, was genau geschah.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 175\nErscheinungsdatum: 22.12.2015\nSprache: Deutsch\nISBN 244-3-490-24939-5\nVerlag: Helfer\nMaße(L/B/H): 220/140/25 mm", rezensionName: "Super Buch")
        let book6: Book = Book(dateiName: "Buch 6", autorName: "Nele Neuhaus",titelName: "Die Lebenden und die Toten", preisName: "Preis: 24,95€", beschreibungName: "Kriminalkommissarin Pia Kirchhoff will gerade in die Flitterwochen fahren, als sie ein Anruf erreicht: In der Nähe von Eschborn wurde eine ältere Dame aus dem Hinterhalt erschossen. Kurz darauf ereignet sich ein ähnlicher Mord: Eine Frau wird durch das Küchenfenster ihres Hauses tödlich getroffen. Beide Opfer hatten keine Feinde.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 400\nErscheinungsdatum: 25.09.2013\nSprache: Deutsch\nISBN 274-5-490-25679-5\nVerlag: Droemer Knauer Verlaf\nMaße(L/B/H): 300/145/25 mm", rezensionName: "Typisch Nele Neuhaus Krimi. Spannend von der ersten bis zur letzten Seite. Ein Muss für alle Krimifans. Freue mich schon jetzt, auf ihre nächste Geschichte mit Pia- der Kommissarin.")
        let book7: Book = Book(dateiName: "Buch 7", autorName: "Jojo Moyes",titelName: "Ein ganz neues Leben", preisName: "Preis: 7,50€",
            beschreibungName: "«Du hast mich mitten ins Herz getroffen, Clark. Vom ersten Tag an, an dem du mit deinen lächerlichen Klamotten hereingestapft bist. Du hast mein Leben verändert.» Sechs Monate hatten Louisa Clark und Will Traynor zusammen. Ein ganzes halbes Jahr. Und diese sechs Monate haben beide verändert. Lou ist nicht mehr das Mädchen aus der Kleinstadt, das Angst vor seinen eigenen ",
            merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 150\nErscheinungsdatum: 21.10.2015\nSprache: Deutsch\nISBN 274-5-250-25679-5\nVerlag: Droemer Knauer Verlaf\nMaße(L/B/H): 300/145/25 mm", rezensionName: "Super Buch")
        let book8: Book = Book(dateiName: "Buch 8", autorName: "Lea Schmidbauer, Kristina Magdalena Henn",titelName: "Ostwind - Aufbruch nach Ora", preisName: "Preis: 9,50€", beschreibungName: "Mika scheint endlich angekommen zu sein: seit einem Jahr wohnt sie nun auf Kaltenbach, kann Ostwind sehen, wann immer sie möchte und auch Milan, der jetzt auf dem Hof arbeitet, ist an ihrer Seite. Außerdem ist Mika eine kleine Berühmtheit. Pferdebesitzer aus ganz Deutschland legen weite Strecken zurück, um das Therapiezentrum Kaltenbach zu besuchen. Alles könnte perfekt sein. Doch dann gibt es ein schreckliches Gewitter ausgerechnet in", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 200\nErscheinungsdatum: 21.12.2015\nSprache: Deutsch\nISBN 274-5-750-25679-5\nVerlag: C.H. Beck\nMaße(L/B/H): 300/145/25 mm", rezensionName: "Fazit: Dieses Buch hats in sich, zu Anfang ist es recht traurig im verlauf sehr spannend und zum Ende ebenfalls traurig. Ostwind 3 der letzte Teil? Nehmt Euch am besten eine Taschentücherbox dazu, denn die werdet Ihr brauchen. Irgendwie mag ich den Film schon gar nicht mehr sehen. *schnief*")
        let book9: Book = Book(dateiName: "Buch 9", autorName: "Jeff Kinney",titelName: "Gregs Tagebuch 10 - So ein Mist!", preisName: "Preis: 25,00€", beschreibungName: "Greg ist entsetzt, als seine Mom für die ganze Stadt ein elektronikfreies Wochenende organisieren will. Zwei Tage ohne Handy, Fernsehen und Computerspiele? Stattdessen gemeinsames Saubermachen im Park, Nachmittage in der freien Natur und ein altmodischer Limonadenstand? So ein Mist!, findet Greg und hat schon bei dem",
            merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 350\nErscheinungsdatum: 14.04.2011\nSprache: Deutsch\nISBN 274-5-490-24939-5\nVerlag: Helfer\nMaße(L/B/H): 300/145/25 mm", rezensionName: "Ich habe das Buch innerhalb von zwei Tagen gelesen so gefangen war ich. Es hat mir das Gefühl gegeben ein Kind dieser Familie zu sein.")
        let book10: Book = Book(dateiName: "Buch 10", autorName: "Georg Hoffmann",titelName: "Guinness World Records 2016", preisName: "Preis: 16,45€", beschreibungName: "Das Rekord-Buch, das alle Rekorde bricht!Willkommen zur neuesten Edition von Guinness World Records. Letztes Jahr haben wir 60. Jubiläum gebührend gefeiert - dieses Jahr knüpfen wir an diesen Erfolg an und präsentieren euch wieder ein brandneues Design, spannende, topaktuelle Rekorde und eine ganze Reihe origineller Fotos. Die Herausforderung ist es, jedes neue",
            merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 275\nErscheinungsdatum: 05.08.2013\nSprache: Deutsch\nISBN 274-5-750-25679-5\nVerlag: Ullstein Taschenbuchverlag\nMaße(L/B/H): 250/120/25 mm", rezensionName: "Das „Guinness World Records“, oder wie es eigentlich auf deutsch heißen müsste, Guinness Buch der Rekorde“ ist seit vielen Jahren ein konstanter Faktor bei Jahresbüchern. Egal, welchen Band man sich kauft, immer wieder kann man darüber staunen, wie verrückte, lustige und auch manchmal abstrakte Rekorde von Menschen, Tieren und natürlich der Natur aufgestellt werden.")
        let book11: Book = Book(dateiName: "Buch 11", autorName: "Jochen Schweizer",titelName: "Der perfekte Augenblick - Eine Anleitung für mehr Glück, Erfolg und Stärke", preisName: "Preis: 19,99€", beschreibungName: "Wie schaffe ich es, im richtigen Moment die richtigen Entscheidungen zu treffen? Wenn es einen Autor in Deutschland gibt, der Grenzerfahrungen positiv mit Leben erfüllt, ist es Jochen Schweizer. Der Unternehmer und prominente Investor des VOX-Formats Die Höhle der Löwen war Stuntman, brach Weltrekorde als Bungeejumper und macht mit seinem Unternehmen Umsätze in Millionenhöhe. Ob beim Fallschirmspringen, Fassadenklettern", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 290\nErscheinungsdatum: 01.06.2010\nSprache: Deutsch\nISBN 274-5-750-25600-5\nVerlag: C.H. Beck\nMaße(L/B/H): 220/120/25 mm", rezensionName: "Liest sich sehr gut, empfehlenswert! Man kann ein bisschen lernen, aufzustehen, wird motiviert sein Leben selbst in Angriff zu nehmen. Schöne optische Aufmachung.")
        let book12: Book = Book(dateiName: "Buch 12", autorName: "Erin Hunter",titelName: "Warrior Cats Staffel 05/02 - Der Ursprung der Clans", preisName: "Preis: 12,50€", beschreibungName: "Die Katzen haben endlich eine neue Heimat gefunden. Doch das Zerwürfnis der Brüder Wolkenhimmel und Grauer Flug hat auch die Gruppe in zwei feindliche Lager gespalten. Ein junger Kater steht zwischen den Fronten und muss sich der schwierigsten Entscheidung seines Lebens stellen. Wolkenhimmel verwehrt jeder Katze, die krank oder schwach ist, den Zutritt zu seinem Wald. Er verstößt sogar ",
            merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 375\nErscheinungsdatum: 01.08.2010\nSprache: Deutsch\nISBN 274-5-750-27700-5\nVerlag: Ullstein Taschenbuchverlag\nMaße(L/B/H): 220/120/25 mm", rezensionName: "Super Buch! Kann ich jedem Katzenliebhaber empfehlen!")
        let book13: Book = Book(dateiName: "Buch 13", autorName: "Rebecca Gable",titelName: "Der Palast der Meere", preisName: "Preis: 30,00€", beschreibungName: "Mailand, 6. Juni 1992, nachts. Bei dem Journalisten Colonna ist eingebrochen worden. Die Diskette mit brisanten Informationen hat man nicht gefunden, Colonna sieht jetzt sein eigenes Leben bedroht. Auch er spielt ein Doppelspiel: Er soll eine Zeitung lancieren, die mit schmutzigen Gerüchten über die gute Gesellschaft arbeitet. Zugleich schreibt er als Ghostwriter ein Enthüllungsbuch über den programmierten Skandal.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 300\nErscheinungsdatum: 11.10.2011\nSprache: Deutsch\nISBN 274-5-750-27700-5\nVerlag: Ullstein Taschenbuchverlag\nMaße(L/B/H): 220/120/25 mm", rezensionName: "Super Buch! Nehmt Euch am besten eine Taschentücherbox dazu, denn die werdet Ihr brauchen. Irgendwie mag ich den Film schon gar nicht mehr sehen. *schnief*")
        let book14: Book = Book(dateiName: "Buch 14", autorName: "Micaela Jary",titelName: "Wie ein fernes Lied", preisName: "Preis: 8,50€", beschreibungName: "Hamburg,1939: Verzweifelt sieht Marga dem Zug hinterher, mit dem ihr Jugendfreund Michael in die Ferne reist. Seit sie denken kann, ist sie in den jüdischen Klarinettisten verliebt, zahllose Stunden verbrachte sie mit ihm in den Tanzlokalen der Hamburger Swingjugend. Obwohl seine Herkunft ihn zur Emigration nach Paris zwingt, ist Marga fest entschlossen, ihn wiederzusehen.", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 180\nErscheinungsdatum: 02.08.2014\nSprache: Deutsch\nISBN 272-5-750-67709-5\nVerlag: Hanse\nMaße(L/B/H): 250/120/25 mm", rezensionName: "Ich bewundere Autoren und Autorinnen, die es tatsächlich schaffen jedes Jahr wieder ein Buch auf den Markt zu bringen. Natürlich besonders dann, wenn diese Bücher auch noch gut sind!")
        let book15: Book = Book(dateiName: "Buch 15", autorName: "Patricia Schröder",titelName: "Tilla, Zwieback und die verzwickte Zoorettung", preisName: "Preis: 5,00€", beschreibungName: "Tillas knallroter Eisenbahnwaggon rattert mit voller Fahrt ins nächste Abenteuer. Und wer daran zweifelt, dass Tilla neben der Riesenfledermaus Zwieback und vielen magischen Gegenständen auch noch einen ganzen Zoo im Waggon unterkriegt, der sollte einfach aufhören zu lesen. Andererseits: Wenn ein fieser Zoodirektor den Tieren das Leben zur Hölle macht und die arme kranke Giraffe sogar einschläfern will, dann muss man doch einfach dranbleiben, oder?", merkmaleName: "Einband: gebundene Ausgabe\nSeitenzahl: 345\nErscheinungsdatum: 09.08.2015\nSprache: Deutsch\nISBN 290-9-750-67709-5\nVerlag: Hanse\nMaße(L/B/H): 280/120/25 mm",
            rezensionName: "Werden es Tilla und Jannes schaffen den Zoo zu retten? Wird Tilla ihre geliebte Fledermaus wieder finden und trifft sie endlich ihre Eltern wieder? Um diese Fragen beantworten zu können, muss man einfach dieses wundervolle Buch lesen.")
        
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
