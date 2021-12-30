//
//  ViewController.swift
//  MatchApp
//
//  Created by Hannah Kim on 12/29/21.
//

import UIKit

// adding protocols to conform to
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    

    

    //reference to collectionView
    //Window > Documentation to figure out protocols
    //hold down option while clicking a method
    @IBOutlet weak var collectionView: UICollectionView!
    
    let model = CardModel()
    var cardsArray = [Card]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //keep track of all the card objects
        cardsArray = model.getCards()
        
        // Set the view controller as the datasource and delegate of the collection view
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }

    
    
    
    
    // MARK: - Colection View Delegate Methods
    
    //methods required by CollectionViewDataSource
    //required parameters are different
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Return number of cards
        return cardsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //indexPath = which cell in collection view is used
        //needs to return whole collectionView object
        
        // get a cell
        
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        //looks for collectionView cells to reuse
        
        
        // TODO: inish configuring cell
        
        // return
        return cell
    }}

