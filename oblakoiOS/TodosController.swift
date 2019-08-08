//
//  TodosController.swift
//  oblakoiOS
//
//  Created by Nikita on 07/08/2019.
//  Copyright © 2019 Nikita. All rights reserved.
//


import UIKit
import M13Checkbox
class TodosController: CustomTableview {
    
    @IBOutlet weak var todoTableView: UITableViewCell!
    
    let project1 = ["Заплатить за квартиру", "Купить продукты" ,"Забрать обувь из ремонта"]
    let project2 = ["Заполнить отчёт", "Отправить документы" ,"Позвонить заказчику"]
    
    let todo = ["Семья", "Работа", "Прочее"]
    @IBOutlet weak var addTodoButton: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "CustomCheckboxCell", bundle: nil), forCellReuseIdentifier: "customCheckboxCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return todo.count
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = todo[section]
        return header
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCheckboxCell") as! CustomCheckboxCell
        if indexPath.section == 1 {
            cell.todoTitle?.text = project2[indexPath.row]
            
        } else {
            cell.todoTitle?.text = project1[indexPath.row]
            
            
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell: CustomCheckboxCell = tableView.cellForRow(at: indexPath) as! CustomCheckboxCell
        if cell.todoCheckbox.checkState == .unchecked {
            cell.todoTitle?.attributedText = String.makeSlashText((cell.todoTitle?.text)!)
            cell.todoCheckbox.setCheckState(.checked, animated: true)
        } else {
            cell.todoCheckbox.setCheckState(.unchecked, animated: true)
            cell.todoTitle?.attributedText = String.makePlainText((cell.todoTitle?.attributedText)!)
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
}
extension String {
    static func makeSlashText(_ text:String) -> NSAttributedString {
        
        
        let attr: NSMutableAttributedString =  NSMutableAttributedString(string: text)
        attr.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attr.length))
        
        return attr
        
    }
    static func makePlainText(_ text: NSAttributedString) -> NSAttributedString {
        let attr: NSMutableAttributedString =  NSMutableAttributedString(attributedString: text)
        attr.removeAttribute(NSAttributedString.Key.strikethroughStyle, range: NSMakeRange(0, attr.length))
        return attr
    }
}
