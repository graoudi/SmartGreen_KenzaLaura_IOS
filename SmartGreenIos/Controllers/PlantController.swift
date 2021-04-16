//
//  PlantController.swift
//  SmartGreenIos
//
//  Created by kenza graoudi on 09/04/2021.
//

import UIKit

class PlantController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var searchbar: UISearchBar!
    
    let titlesF = [("Rose"),("Aloe Vera"),("Anthurium"),("Cactus"),("Cyclamen"),("Orchidee"),("Violette")]
        let desF = [("Exposition : Lumière ambiante du soleil \n mais indirecte. Arroser une fois par semaine environ, surtout lorsque le sol est sec en surface.."),
                    ("L’entretien de l’aloé vera doit être régulier mais modéré : pensez à arroser 1 fois par semaine environ, surtout lorsque le sol est sec en surface. "),
                    ("La température d’une maison ou d’un appartement est idéal car elle doit être comprise en 18 et 21° toute l’année. Arroser régulièrement, sensible à la secheresse."),
                    
                    ("Arrosez uniquement votre cactée si le terreau est sec.."),
                    ("Le cyclamen a besoin de fraîcheur pour rester beau : dans tous les cas, 16 à 18 °C, c’est l’idéal, mais pas plus de 20 °C. Arrosez par le dessus, sur les bords du pot, tous les 15 jours,sans mouiller les feuilles ni le cœur de la plante, ce qui provoque la pourriture des boutons. Le terreau doit rester légèrement humide."),
                  
                    ("La température adéquate pour les orchidées est comprise entre 20 et 25° C. Il faudra arroser l’orchidée environ 1 fois tous les 10 jours en période de floraison et tous les 20 jours environ quand l’orchidée est défleurie. "),
                    ("La violette africaine a besoin d'une température comprise entre 18 et 24° mais qui ne doit jamais descendre sous les 13°. Un arrosage régulier mais modéré est nécessaire.")]
        let imagesF = [UIImage(named: "rose"),
                       UIImage(named: "aloevera"),
                       UIImage(named: "anthurium"),
                       UIImage(named: "cactus"),
                       UIImage(named: "cyclamen"),
                       UIImage(named: "orchidee"),
                       UIImage(named: "violette")]
    
    var isSearching = false
    var searchedPlant = [String]()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isSearching {
                     return searchedPlant.count
                 }
        else {
                     return titlesF.count
                 }
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableCellViewController
           
        if isSearching {
                     cell.titleLabel?.text = searchedPlant[indexPath.row]
                 } else {
                    cell.imageCell.image = self.imagesF[indexPath .row]
                    cell.titleLabel.text = self.titlesF[indexPath .row]
                    cell.text01Label.text = self.desF[indexPath .row]
                 }
        
       
           return cell
       }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension PlantController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            searchedPlant = titlesF.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
            isSearching = true
        tableView.reloadData()
        }
}
