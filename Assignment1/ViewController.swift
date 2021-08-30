//
//  ViewController.swift
//  Assignment1
//
//  Created by Andrew Bell on 2/5/20.
//  Copyright © 2020 Andrew Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var Name: UITextField!
    
    @IBOutlet weak var assignpoint: UITextField!
    
    @IBOutlet weak var assignmax: UITextField!
    
    @IBOutlet weak var assignpercent: UITextField!
    
    @IBOutlet weak var midtermpoint: UITextField!
    
    @IBOutlet weak var midtermmax: UITextField!
    
    @IBOutlet weak var midtermpercent: UITextField!
    
    @IBOutlet weak var finalpoint: UITextField!
    
    @IBOutlet weak var finalmax: UITextField!
    
    @IBOutlet weak var finalpercent: UITextField!
    
    @IBOutlet weak var credits: UITextField!
    
    @IBOutlet weak var coursenumber: UITextField!
    
    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var remove: UIButton!
    
    @IBOutlet weak var course1: UILabel!
    
    @IBOutlet weak var course2: UILabel!
    
    @IBOutlet weak var course3: UILabel!
    
    @IBOutlet weak var course4: UILabel!
    
    @IBOutlet weak var grade1image: UIImageView!
    
    @IBOutlet weak var grade2image: UIImageView!
    
    @IBOutlet weak var grade3image: UIImageView!
    
    @IBOutlet weak var grade4image: UIImageView!
    
    @IBOutlet weak var gpa: UILabel!
    
    var truu = 0
    var count = 0
    var maxass : Double = 0
    var maxmid : Double = 0
    var maxfinal : Double = 0
    var pointass : Double = 0
    var pointmid : Double = 0
    var pointfinal : Double = 0
    var percentass : Double = 0
    var percentmid : Double = 0
    var percentfinal : Double = 0
    var coursecreds : Double = 0
    var totalcreds : Double = 0
    var totalpercent = 0
    var grade : Double = 0
    var gradeasint : Double = 0
    var oldcoursename = ""
    var gpacompute : Double = 0
    var oldgpa : Double = 0
    var calc : Double = 0
    var coursedeletion = 0
    
    var oldfirstgr : Double = 0
    var oldfirstcr : Double = 0
    var oldsecondgr : Double = 0
    var oldsecondcr : Double = 0
    var oldthirdgr : Double = 0
    var oldthirdcr : Double = 0
    var oldfourthgr : Double = 0
    var oldfourthcr : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        course1.isHidden = true
        course2.isHidden = true
        course3.isHidden = true
        course4.isHidden = true
        
        grade1image.isHidden = true
        grade2image.isHidden = true
        grade3image.isHidden = true
        grade4image.isHidden = true
        
        Name.text = String("Mobile Programming")
        assignpoint.text = String("90")
        assignmax.text = String("100")
        assignpercent.text = String("50")
        midtermpoint.text = String("45")
        midtermmax.text = String("50")
        midtermpercent.text = String("20")
        finalpoint.text = String("90")
        finalmax.text = String("100")
        finalpercent.text = String("30")
        credits.text = String("4")
        
        remove.isEnabled = false
        
    }


    @IBAction func addcourse(_ sender: UIButton) {
        
        truu = 1
        
        if let newassignmax = Double(assignmax.text!), newassignmax > 0 {
            maxass = newassignmax
        }
        
        else{
            truu = 0
         let alert = UIAlertController(title: "Error", message: "Max cannot be less than or equal to 0", preferredStyle: .alert)
         
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(action)
         
         present(alert, animated: true)
                    
                }
        
        if let newmidmax = Double(midtermmax.text!), newmidmax > 0 {
            maxmid = newmidmax
        }
        
        else{
            truu = 0
         let alert = UIAlertController(title: "Error", message: "Max cannot be less than or equal to 0", preferredStyle: .alert)
         
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(action)
         
         present(alert, animated: true)
                    
                }
        
        if let newfinalmax = Double(finalmax.text!), newfinalmax > 0 {
                  maxfinal = newfinalmax
              }
              
        else{
              truu = 0
               let alert = UIAlertController(title: "Error", message: "Max cannot be less than or equal to 0", preferredStyle: .alert)
               
              let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              
              alert.addAction(action)
               
               present(alert, animated: true)
                          
                      }
        
        if let newasspoint = Double(assignpoint.text!), newasspoint >= 0, newasspoint <= maxass {
                         pointass = newasspoint
                     }
                     
               else{
                     truu = 0
                      let alert = UIAlertController(title: "Error", message: "Points must be from 0 to Max", preferredStyle: .alert)
                      
                     let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                     
                     alert.addAction(action)
                      
                      present(alert, animated: true)
                                 
                             }
        if let newmidpoint = Double(midtermpoint.text!), newmidpoint >= 0, newmidpoint <= maxmid {
                  pointmid = newmidpoint
              }
              
        else{
              truu = 0
               let alert = UIAlertController(title: "Error", message: "Points must be from 0 to Max", preferredStyle: .alert)
               
              let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              
              alert.addAction(action)
               
               present(alert, animated: true)
                          
                      }
        
        if let newfinalpoint = Double(finalpoint.text!), newfinalpoint >= 0, newfinalpoint <= maxfinal {
                         pointfinal = newfinalpoint
                     }
                     
               else{
                     truu = 0
                      let alert = UIAlertController(title: "Error", message: "Points must be from 0 to Max", preferredStyle: .alert)
                      
                     let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                     
                     alert.addAction(action)
                      
                      present(alert, animated: true)
                                 
                             }
        
        
        if let newasspercent = Double(assignpercent.text!), newasspercent >= 0, newasspercent <= 100 {
                         percentass = newasspercent
                     }
                     
               else{
                     truu = 0
                      let alert = UIAlertController(title: "Error", message: "Percentage must be from 0 to 100", preferredStyle: .alert)
                      
                     let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                     
                     alert.addAction(action)
                      
                      present(alert, animated: true)
                                 
                             }
        
        if let newmidpercent = Double(midtermpercent.text!), newmidpercent >= 0, newmidpercent <= 100 {
                  percentmid = newmidpercent
              }
              
        else{
              truu = 0
               let alert = UIAlertController(title: "Error", message: "Percentage must be from 0 to 100", preferredStyle: .alert)
               
              let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              
              alert.addAction(action)
               
               present(alert, animated: true)
                          
                      }
        
        
        if let newfinalpercent = Double(finalpercent.text!), newfinalpercent >= 0, newfinalpercent <= 100 {
                  percentfinal = newfinalpercent
              }
              
        else{
              truu = 0
               let alert = UIAlertController(title: "Error", message: "Percentage must be from 0 to 100", preferredStyle: .alert)
               
              let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              
              alert.addAction(action)
               
               present(alert, animated: true)
                          
                      }
        
        
        
        let totalpercent = percentass + percentmid + percentfinal
        
        if totalpercent != 100 {
            truu = 0
             let alert = UIAlertController(title: "Error", message: "Total percentage must equal 100", preferredStyle: .alert)
             
            let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(action)
             
             present(alert, animated: true)
            
        }
        
        if let newcoursecreds = Double(credits.text!), newcoursecreds > 0, newcoursecreds <= 6 {
                  coursecreds = newcoursecreds
              }
              
        else{
              truu = 0
               let alert = UIAlertController(title: "Error", message: "Credits must be between 0 and 7", preferredStyle: .alert)
               
              let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              
              alert.addAction(action)
               
               present(alert, animated: true)
                          
                      }
        
        if count >= 4 {truu = 0
            let alert = UIAlertController(title: "Error", message: "You can't add more than 4 courses", preferredStyle: .alert)
             
            let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(action)
             
             present(alert, animated: true)
        }
        
        if oldcoursename == Name.text {
            truu = 0
            let alert = UIAlertController(title: "Error", message: "You already have a course named that", preferredStyle: .alert)
             
            let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(action)
             
             present(alert, animated: true)
            
        }
        
        if truu == 1 {
            oldcoursename = Name.text ?? ""
            count = count + 1
            remove.isEnabled = true
            
            totalcreds = totalcreds + coursecreds
            grade = ((pointass/maxass)*percentass)+((pointmid/maxmid)*percentmid)+((pointfinal/maxfinal)*percentfinal)
            
            
            if grade >= 89.5, grade <= 100 {gradeasint = 4 }
            else if grade >= 79.5, grade < 89.5 {gradeasint = 3 }
            else if grade >= 69.5, grade < 79.5 {gradeasint = 2 }
            else if grade >= 59.5, grade < 69.5 {gradeasint = 1 }
            else {gradeasint = 0}
            
            if count == 1 {oldfirstcr = coursecreds
                oldfirstgr = gradeasint
            }
            
            else if count == 2 {oldsecondcr = coursecreds
                oldsecondgr = gradeasint
            }
            
            else if count == 3 {oldthirdcr = coursecreds
                oldthirdgr = gradeasint
            }
            
            else {oldfourthcr = coursecreds
                oldfourthgr = gradeasint}
            
            
            calc = gradeasint * coursecreds
            oldgpa = oldgpa + calc
            gpacompute = oldgpa / totalcreds
            
            
            
            
            
            if count == 1 {
                course1.text = Name.text
                course1.isHidden = false
                
                if gradeasint == 4 {grade1image.image = UIImage(named: "grade_a")
                    grade1image.isHidden = false
                }
                else if gradeasint == 3 {grade1image.image = UIImage(named: "grade_b")
                    grade1image.isHidden = false}
                else if gradeasint == 2 {grade1image.image = UIImage(named: "grade_c")
                    grade1image.isHidden = false}
                else if gradeasint == 1 {grade1image.image = UIImage(named: "grade_d")
                    grade1image.isHidden = false}
                else {grade1image.image = UIImage(named: "grade_f")
                    grade1image.isHidden = false}
            }
            
            if count == 2 {
                course2.text = Name.text
                course2.isHidden = false
                
                if gradeasint == 4 {grade2image.image = UIImage(named: "grade_a")
                    grade2image.isHidden = false
                }
                else if gradeasint == 3 {grade2image.image = UIImage(named: "grade_b")
                    grade2image.isHidden = false}
                else if gradeasint == 2 {grade2image.image = UIImage(named: "grade_c")
                    grade2image.isHidden = false}
                else if gradeasint == 1 {grade2image.image = UIImage(named: "grade_d")
                    grade2image.isHidden = false}
                else {grade2image.image = UIImage(named: "grade_f")
                    grade2image.isHidden = false}
                
                
            }
            
            if count == 3 {
                course3.text = Name.text
                course3.isHidden = false
                
                if gradeasint == 4 {grade3image.image = UIImage(named: "grade_a")
                    grade3image.isHidden = false
                }
                else if gradeasint == 3 {grade3image.image = UIImage(named: "grade_b")
                    grade3image.isHidden = false}
                else if gradeasint == 2 {grade3image.image = UIImage(named: "grade_c")
                    grade3image.isHidden = false}
                else if gradeasint == 1 {grade3image.image = UIImage(named: "grade_d")
                    grade3image.isHidden = false}
                else {grade3image.image = UIImage(named: "grade_f")
                    grade3image.isHidden = false}
                
            }
            
            if count == 4 {
                course4.text = Name.text
                course4.isHidden = false
                
                if gradeasint == 4 {grade4image.image = UIImage(named: "grade_a")
                    grade4image.isHidden = false
                }
                else if gradeasint == 3 {grade4image.image = UIImage(named: "grade_b")
                    grade4image.isHidden = false}
                else if gradeasint == 2 {grade4image.image = UIImage(named: "grade_c")
                    grade4image.isHidden = false}
                else if gradeasint == 1 {grade4image.image = UIImage(named: "grade_d")
                    grade4image.isHidden = false}
                else {grade4image.image = UIImage(named: "grade_f")
                    grade4image.isHidden = false}
                
            }
            
            if gpacompute >= 3.0, gpacompute <= 4.0 {
                gpa.text = ("GPA: \(gpacompute)")
                gpa.textColor = UIColor.green
            }
            else if gpacompute >= 2.0, gpacompute <= 2.99 {
                gpa.text = ("GPA: \(gpacompute)")
                gpa.textColor = UIColor.orange}
            else {gpa.text = ("GPA: \(gpacompute)")
                gpa.textColor = UIColor.red}
            
        }
     

    }
    
    @IBAction func deletecourse(_ sender: UIButton) {
        

        
        if let newcn = Int(coursenumber.text!), newcn > count {
            let alert = UIAlertController(title: "Error", message: "You do not have that many courses input", preferredStyle: .alert)
             
            let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(action)
             
             present(alert, animated: true)
        }
        
        else if let cnnw = Int(coursenumber.text!) {
            coursedeletion = cnnw
            print(count)
            if coursedeletion == 1 {
                if count == 1 {
                    course1.text = "Course 1"
                    course1.isHidden = true
                    grade1image.isHidden = true
                    remove.isEnabled = false
                    gpa.text = ("GPA: ")
                    gpa.textColor = UIColor.white
                    
                }
                
                else if count == 2 {
                    course1.text = course2.text
                    course2.text = "Course 2"
                    grade1image.image = grade2image.image
                    course2.isHidden = true
                    grade2image.isHidden = true
                    
                    calc = oldfirstgr * oldfirstcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldfirstcr
                    gpacompute = oldgpa / totalcreds
                    
                    oldfirstgr = oldsecondgr
                    oldfirstcr = oldsecondcr
                    
                    if gpacompute >= 3.0, gpacompute <= 4.0 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.green
                    }
                    else if gpacompute >= 2.0, gpacompute <= 2.99 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.orange}
                    else {gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.red}
                    
                }
                else if count == 3{
                    course1.text = course2.text
                    grade1image.image = grade2image.image
                    course2.text = course3.text
                    grade2image.image = grade3image.image
                    course3.text = "Course 3"
                    course3.isHidden = true
                    grade3image.isHidden = true
                    
                    calc = oldfirstgr * oldfirstcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldfirstcr
                    gpacompute = oldgpa / totalcreds
                    
                    
                    oldfirstgr = oldsecondgr
                    oldfirstcr = oldsecondcr
                    oldsecondgr = oldthirdgr
                    oldsecondcr = oldthirdcr
                    
                    if gpacompute >= 3.0, gpacompute <= 4.0 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.green
                    }
                    else if gpacompute >= 2.0, gpacompute <= 2.99 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.orange}
                    else {gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.red}
                }
                
                else {
                    course1.text = course2.text
                    grade1image.image = grade2image.image
                    course2.text = course3.text
                    grade2image.image = grade3image.image
                    course3.text = course4.text
                    grade3image.image = grade4image.image
                    course4.text = "Course 4"
                    course4.isHidden = true
                    grade4image.isHidden = true
                    
                    calc = oldfirstgr * oldfirstcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldfirstcr
                    gpacompute = oldgpa / totalcreds
                    
                    
                    oldfirstgr = oldsecondgr
                    oldfirstcr = oldsecondcr
                    oldsecondgr = oldthirdgr
                    oldsecondcr = oldthirdcr
                    oldthirdgr = oldfourthgr
                    oldthirdcr = oldfourthcr
                    
                    if gpacompute >= 3.0, gpacompute <= 4.0 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.green
                    }
                    else if gpacompute >= 2.0, gpacompute <= 2.99 {
                        gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.orange}
                    else {gpa.text = ("GPA: \(gpacompute)")
                        gpa.textColor = UIColor.red}
                    
                }
                count = count - 1
                
            }
            
            else if coursedeletion == 2 {
                if count == 2 {
                    course2.text = "Course 2"
                    course2.isHidden = true
                    grade2image.isHidden = true
                    
                     calc = oldsecondgr * oldsecondcr
                     oldgpa = oldgpa - calc
                     totalcreds = totalcreds - oldsecondcr
                     gpacompute = oldgpa / totalcreds
                                       
                                       
                                       
                                       
                                       if gpacompute >= 3.0, gpacompute <= 4.0 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.green
                                       }
                                       else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.orange}
                                       else {gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.red}
                    
                }
                
                else if count == 3 {
                    course2.text = course3.text
                    course3.text = "Course 3"
                    grade2image.image = grade3image.image
                    course3.isHidden = true
                    grade3image.isHidden = true
                    
                    calc = oldsecondgr * oldsecondcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldsecondcr
                    gpacompute = oldgpa / totalcreds
                                       
                                       
                                       
                                       oldsecondgr = oldthirdgr
                                       oldsecondcr = oldthirdcr
                                       
                                       
                                       if gpacompute >= 3.0, gpacompute <= 4.0 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.green
                                       }
                                       else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.orange}
                                       else {gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.red}
                    
                }
                else {
                    course2.text = course3.text
                    grade2image.image = grade3image.image
                    course3.text = course4.text
                    grade3image.image = grade4image.image
                    course4.text = "Course 4"
                    course4.isHidden = true
                    grade4image.isHidden = true
                    
                    calc = oldsecondgr * oldsecondcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldsecondcr
                    gpacompute = oldgpa / totalcreds
                                       
                                       
                                       
                    oldsecondgr = oldthirdgr
                    oldsecondcr = oldthirdcr
                    oldthirdgr = oldfourthgr
                    oldthirdcr = oldfourthcr
                                       
                                       
                                       if gpacompute >= 3.0, gpacompute <= 4.0 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.green
                                       }
                                       else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                           gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.orange}
                                       else {gpa.text = ("GPA: \(gpacompute)")
                                           gpa.textColor = UIColor.red}
                }
                
                
                
                
                
                count = count - 1
                
                
                
            }
            
            else if coursedeletion == 3 {
                
                if count == 3 {
                                   course3.text = "Course 3"
                                   course3.isHidden = true
                                   grade3image.isHidden = true
                    
                    
                    calc = oldthirdgr * oldthirdcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldthirdcr
                    gpacompute = oldgpa / totalcreds
                                      
                                      
                                      
                                      
                                      if gpacompute >= 3.0, gpacompute <= 4.0 {
                                          gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.green
                                      }
                                      else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                          gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.orange}
                                      else {gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.red}
                                   
                               }
                               
            else {
                                   course3.text = course4.text
                                   course4.text = "Course 4"
                                   grade3image.image = grade4image.image
                                   course4.isHidden = true
                                   grade4image.isHidden = true
                    
                    calc = oldthirdgr * oldthirdcr
                    oldgpa = oldgpa - calc
                    totalcreds = totalcreds - oldthirdcr
                    gpacompute = oldgpa / totalcreds
                    
                    oldthirdgr = oldfourthgr
                    oldthirdcr = oldfourthcr
                                      
                                      
                                      
                                      
                                      if gpacompute >= 3.0, gpacompute <= 4.0 {
                                          gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.green
                                      }
                                      else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                          gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.orange}
                                      else {gpa.text = ("GPA: \(gpacompute)")
                                          gpa.textColor = UIColor.red}
                                   
                               }
                               
                               
                               count = count - 1
                
                
            }
            
            else if coursedeletion == 4 {
                course4.text = "Course 4"
                course4.isHidden = true
                grade4image.isHidden = true
                
                
                calc = oldfourthgr * oldfourthcr
                oldgpa = oldgpa - calc
                totalcreds = totalcreds - oldfourthcr
                gpacompute = oldgpa / totalcreds
                                  
                                  
                                  
                                  
                                  if gpacompute >= 3.0, gpacompute <= 4.0 {
                                      gpa.text = ("GPA: \(gpacompute)")
                                      gpa.textColor = UIColor.green
                                  }
                                  else if gpacompute >= 2.0, gpacompute <= 2.99 {
                                      gpa.text = ("GPA: \(gpacompute)")
                                      gpa.textColor = UIColor.orange}
                                  else {gpa.text = ("GPA: \(gpacompute)")
                                      gpa.textColor = UIColor.red}
                
                count = count - 1
                
                
            }
            
            else {
                let alert = UIAlertController(title: "Error", message: "That's not a valid course number", preferredStyle: .alert)
                 
                let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                
                alert.addAction(action)
                 
                 present(alert, animated: true)
                
                
            }
            
            
        }
        
        
      
        
        
    }
    
    
}

