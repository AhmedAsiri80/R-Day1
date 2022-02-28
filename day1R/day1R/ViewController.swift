//
//  ViewController.swift
//  day1R
//
//  Created by Ahmed Assiri on 26/07/1443 AH.
//


import UIKit

class ViewController: UIViewController {
    
    let arr1 = ["1","2","3"]
    
    let arr2 = ["Sw","Py","JS"]
    let arr3 = ["BM","M","O","T"]
    let arr4 = ["10","20"]
    
    
    @IBOutlet weak var segment1: UISegmentedControl!
    
    @IBOutlet weak var segment2: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //اضافة داله حذف ثم هدم
        segment1.removeAllSegments()
        segment2.removeAllSegments()
        //
        for x in 0..<arr1.count {
            
            segment1.insertSegment(withTitle: arr1[x], at: x, animated: true)
        }
        
        addsegment(arr: arr2)
    }

    @IBAction func segment1action(_ sender: Any) {
        segment2.removeAllSegments()
        if segment1.selectedSegmentIndex == 0 {
            addsegment(arr: arr2)
        }else if segment1.selectedSegmentIndex == 1 {
            addsegment(arr: arr3)
        }else if segment1.selectedSegmentIndex == 2 {
            addsegment(arr: arr4)
        }
    }
    
    func addsegment(arr:[String]){
        
        for x in 0..<arr.count  {
            segment2.insertSegment(withTitle: arr[x], at: x, animated: true)
        }
    }
}

