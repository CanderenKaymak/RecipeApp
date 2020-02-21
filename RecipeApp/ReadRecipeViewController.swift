//
//  ReadRecipeViewController.swift
//  RecipeApp
//
//  Created by Canderen Kaymak on 21.02.2020.
//  Copyright © 2020 Canderen Kaymak. All rights reserved.
//

import UIKit

class ReadRecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: -Variables
    var selectedRow = 0
    var menuImages = [UIImage(named: "manti"),
                      UIImage(named: "kofte"),
                      UIImage(named: "cacik"),
                      UIImage(named: "alinazik")]
    
    var recipeTexts = ["Yufkadan hazırlanan kolay mantının iç harcını hazırlamak için; kuru soğanı küçük küpler halinde doğrayın, arzuya göre rendeleyip suyunu sıkın. Ayıklanmış maydanoz yapraklarını incecik kıyın. Doğranmış kuru soğan, maydanoz, orta yağlı kıyma ve tuzu karıştırarak kolay mantı harcını hazırlayın. İlk hazır yufkayı mutfak tezgahına serin. Kenar kısımlarını hafifçe içe doğru katlayıp yufkaya düzgün bir dikdörtgen formu verin. Hazırladığınız iç harcı göz kararı üç eşit parçaya bölüp bir ölçüsünü yufkanın geniş kenarına elinizle dağıtın. Rulo şeklinde sarıp iki parmak kalınlığında dilimlere ayırın. Diğer yufkalara da sırasıyla aynı işlemi uygulayın. Elde ettiğiniz mantıları yağlanmış fırın tepsisine dik bir şekilde, sıkıştırarak dizin. Üzerlerini zeytinyağıyla yağlayın. Önceden ısıtılmış 200 derece fırında, 15-20 dakika kadar pişirin. Yoğurt sos için; bir diş sarımsağı rendeleyip tuzla ovun. Suyunu süzdürdüğünüz koyu kıvamlı yoğurtla çırpın. Fırından çıkan çıtır mantıları servis tabağına alın, kısa bir süre dinlendirip üzerine yoğurt sos gezdirin. Kırmızı biberli yağ için; küçük bir sos tenceresinde zeytinyağını kızdırıp kokusu çıkana kadar tatlı kırmızı toz biber ve nane yakın. Mantıların üzerine ekleyip bekletmeden sevdiklerinizle paylaşın.","800 gram dana döş ve 200 gram orta yağlı kuzu kıymayı karıştırma kabına alın. Kıymaya, 2 adet rendelenmiş kuru soğan, 1'er tatlı kaşığı tuz ve karbonatı da ekledikten sonra karışım macun kıvamına gelene kadar yaklaşık 10-15 dakika güzelce yoğurun. Hazırladığınız köfte harcını üzerini kapatın ve en az 3 saat kadar buzdolabında bekletin. Pişirme işlemi öncesinde köfte harcını dolaptan çıkartın ve üzerine yağlı kağıt koyup, merdaneyle dikdörtgen şeklinde açın. Pişirme kağıdını üzerinden çıkarıp, keskin bir bıçak yardımıyla uzun ince dikdörtgenler kesin. Orta ateşte, kızgın bir tavada ters yüz ederek kızartın. Ardından sıcak sıcak servis edebilirsiniz. Afiyetler olsun!","Bol suda yıkayıp kuruladığınız salatalıkların uç kısımlarını kestikten sonra kabuklarını alacalı şekilde soyun. Salatalıkları küçük küpler halinde kesin, arzuya göre rendenin kalın tarafıyla rendeleyin. Küçük parçalar halinde kestiğiniz sarımsakları tuz ilavesiyle havanda ezin. Dereotunu incecik kıyın. Salatalık küpleri, ezilmiş sarımsak ve incecik kıyılmış dereotunu yoğurda katın. Azar azar eklediğiniz soğuk suyla karıştırdığınız cacığın kıvamını ayarlayın. Servisi öncesinde zeytinyağı, sirke ve kuru nane ilave ettiğiniz cacığı servis kaselerine paylaştırın. Bekletmeden sevdiklerinizle paylaşın.","Patlıcanları ve biberleri fırında 200 derecede ara ara çevirerek yaklaşık 30 dakika kadar közleyin. Közleme işlemini dilerseniz ocakta, ateş üzerinde de yapabilirsiniz. Kıymalı harcı hazırlamak için tavaya 3 yemek kaşığı tereyağı ve yemek kaşığı sıvı yağını koyup ısıtın ve 1 adet yemeklik doğranmış soğan ile 2 adet doğranmış köy biberini ekleyip kavurun. Soğanlar pembeleştikten sonra 400 gram orta yağlı kıymayı da ekleyin ve suyunu salıp çektikten sonra kavurmaya devam edin. 1 yemek kaşığı domates salçası, 2 çay kaşığı tuz, 1 çay kaşığı karabiber, 1'er çay kaşığı kekik ve pul biberi de ekledikten sonra tekrar karıştırın ve ocaktan alın. 1 kase süzme yoğurda 2 adet ezilmiş sarımsak ve 1 çay kaşığı tuzu ekleyip karıştırın. Fırında közlediğim patlıcan ve biberleri bir kaba aktarıyorum ve üzerini streçleyip 15 dakika kadar bekletiyorum. Patlıcanların kabuklarını soyup  kararmamaları için üzerine 1 yemek kaşığı kadar limon suyu sıkın ve bıçakla iyice ezdikten sonra sarımsaklı yoğurt ile birleştiriyorum. Sıcak tabağın üzerine yoğurtlu patlıcan, közlenmiş biberler ve kıymalı harcı güzelce yerleştirin ve son dokunuş olarak üzerine doğranmış maydanoz serpiştirdikten sonra sıcak olarak, bekletmeden sevdiklerinizle paylaşın."]
    
    //MARK: -IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        //bizim tableView'ımız kaynağının burası olacağını belirtmek için aşağıdaki kod satırları eklendi
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UITableView()
        
        //row heightların otomatik belirlenmesi için yazıldı
        tableView.estimatedRowHeight = 220
        tableView.rowHeight = UITableView.automaticDimension
        
        
    }
    
    // eklediğimiz UIdelegate ve datasource sınıfları için kullanmamız gereken zorunlu metotlar var Bunlardan biri numberOfSection, tableView(numberofRowsInSection) -> Int, Diğeri de tableView(cellForRowAt) ->UITableViewCell
    // Yani bir çerçeve oluşturduk ve buradaki elemanları kalıplıyoruz.
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeImageCell", for: indexPath) as! ReadRecipeImageTableViewCell
            
            cell.recipeImage.image = menuImages[selectedRow]
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeCell", for: indexPath) as! ReadRecipeTableViewCell
            
            cell.recipeText.text = recipeTexts[selectedRow]
            return cell
        }
    }
    //Row heightlar için yazılması gereken iki metot
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
