
import UIKit  // kit แปลว่าชุดเครื่องมือ UIKIT คือ ชุดเครื่องมือของUSER Interface เช่น ปุ่มกด เป็นต้น
//struct is pass by value คือ เหมือนก๊อปปี้แยกกันคนละอัน แก้อันใดกับอันหนึ่งไม่มีผลกับอีกอัน
//class is Pass by Reference คือ เหมือนก๊อปปี้แยกกันคนละอัน แก้อันใดกับอันหนึ่งจะมีผลกับอีกอัน
struct CalculateBrain {
//    var bmi: Float = 0.0 // 1 value เก็บตัวเดียวนะ ไม่ใช่แล้ว
    
    var bmiStruct: BMI?//เหมือนถามว่ามีค่ามั้ย ค่าอะไรอยู่ในนั้น
                        // 3 value เก็บสามตัวเป็นชุด (value, advice ,color)
//    เครื่องหมายคำถาม ? เป็นตัวแปรชนิด Optional คือ ตัวเลือกจะมีหรือไม่มีค่าก็เป็นไปได้
//    ดังนั้นมันอาจจะมีค่าหรือไม่มีค่าก็ได้

    
    
    func getBMIValue() -> String {
//        let bmiTo1DecimalPlace  = String(format: "%.1f", bmi )
        let bmiTo1DecimalPlace  = String(format: "%.1f", bmiStruct?.value ?? 0.0 )
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No advice"
        
//        if แบบย่อ
//        ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
//        bmiStruct?.ad
    }
    

    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
//        bmi ตัวที่ใช้นี้ไม่มี var หรือ let นำหน้า คือตัวที่เป็น global var
        // ส่วน weight กับ height คือตัวที่ฟังก์ชันรับค่ามาในชื่อตัวนั้นๆgป็น Local var
//        bmi = weight / (height * height)
        let bmiValueLocal = weight / (height * height)
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat More pies!", color: #colorLiteral(red: 0, green: 0.8535793424, blue: 0.9111225009, alpha: 1))
        } else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a Fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else  {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit Less pies!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        } //end else
        
    }//end function calculateBMI
        


}// end stuc
