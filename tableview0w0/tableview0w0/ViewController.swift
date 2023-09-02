//
//  ViewController.swift
//  tableview0w0
//
//  Created by Kajal Pahil on 02/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var arr = ["Airplane Mode","Wi-Fi","Bluetooth","Mobile Data","Personal Hotspot","Notifications","Sounds & Haptics","Focus","Screen Time"]

   var image = ["1","2","3","4","5","6","7","8","9"]
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.dataSource = self
        myTable.delegate = self
        
        myTable.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CellCustom")
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(image[indexPath.row])
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CellCustom" , for: indexPath) as! CustomCell
        cell.imgview.image = UIImage(named: image[indexPath.row])
        cell.labell.text = arr[indexPath.row]
        //cell.textLabel?.text = arr[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Settings"
    }
    
}

