//
//  ViewController.swift
//  LeeCode_Swift
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var typeArr = [String]();
    var bundleName = String();//命名空间
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeArr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cellIndentifier";
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier);
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier);
        }
        cell?.textLabel?.text = typeArr[indexPath.row];
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
        let className = String.init(format: "%@ViewController", typeArr[indexPath.row]);
        let cls : AnyClass? = NSClassFromString(bundleName+"."+className);
        // Swift中如果想通过一个Class来创建一个对象, 必须告诉系统这个Class的确切类型
        guard let typeClass = cls as? UIViewController.Type else {
            print("cls不能当做UIViewController类型");
            return;
        }
        let vc = typeClass.init();
        vc.title = typeArr[indexPath.row];
        vc.view.backgroundColor = UIColor.white;
        self.navigationController?.pushViewController(vc, animated: true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LeetCode-Swift";
        
        //swift中动态创建类时需要引入命名空间
        guard let name = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            print("获取命名空间失败");
            return;
        }
        bundleName = name;
        
        //DP-动态规划,DFS-深度优先搜索
        typeArr = ["Array","DP","DFS","List","Math","Search","Sort","Stack","String","Tree","UnionFind"];
       
        let tableView = UITableView.init(frame: view.bounds, style: UITableViewStyle.plain);
        tableView.delegate = self;
        tableView.dataSource = self;
        view.addSubview(tableView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

