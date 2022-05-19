
import Foundation
class ImageAndAns{
    
    var  image : String = " "
    var answerCorrect : String = " "
    var arrAnswerIncorrect = ["", "","",""]
    
    init(){}
    
    init (image: String , answerCorrect : String,inco1: String,inco2: String,inco3 : String, inco4 :String){
        self.image = image
        self.answerCorrect = answerCorrect
        self.arrAnswerIncorrect[0] = inco1
        self.arrAnswerIncorrect[1] = inco2
        self.arrAnswerIncorrect[2] = inco3
        self.arrAnswerIncorrect[3] = inco4


    }
    func getImage() -> String{
        return image
    }
    func getAnswer() -> String{
        return answerCorrect
    }
    func getIncorrectArrAnswer() -> [String]{
        return arrAnswerIncorrect
    }
    
    func imageAndAnsData()->[ImageAndAns] {
        
        var arr: [ImageAndAns] = []
        arr.append(ImageAndAns(image: "https://cashcow-cdn.azureedge.net/images/3b4a5abe-8512-44f7-a3a2-71f8f5f19802_500.jpg", answerCorrect: "Israel",inco1: "UK",inco2: "Israel",inco3: "Morocco",inco4: "Russia"))
        arr.append(ImageAndAns(image: "https://i.pinimg.com/originals/47/18/5b/47185bbba2a43fcde055737b4134da82.gif", answerCorrect: "United States",inco1: "United States",inco2: "Spain",inco3: "Egypt",inco4: "Russia"))
        arr.append(ImageAndAns(image:"https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png", answerCorrect: "UK",inco1: "France",inco2: "UK",inco3: "Poland", inco4: "Germany"))
        arr.append(ImageAndAns(image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/1200px-Flag_of_the_People%27s_Republic_of_China.svg.png", answerCorrect: "China",inco1: "Japan",inco2: "India",inco3: "Poland", inco4: "China"))
        arr.append(ImageAndAns(image: "https://europa.eu/capacity4dev/system/files/styles/photo_overlay/private/images/photo/flag_of_morocco.svg_.png?itok=n5qFR_6D", answerCorrect: "Morocco",inco1: "Poland",inco2: "Israel",inco3: "Germany", inco4: "Morocco"))
        arr.append(ImageAndAns(image: "https://img5.goodfon.com/wallpaper/nbig/6/5f/russian-flag-russian-flag-russia-flag-of-russia.jpg", answerCorrect: "Russia",inco1: "Ukraine", inco2: "Russia",inco3: "Uk", inco4: "Japan"))
        arr.append(ImageAndAns(image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/1920px-Flag_of_Ukraine.svg.png", answerCorrect:"Ukraine",inco1: "Russia",inco2: "Egypt",inco3: "India", inco4: "Ukraine"))
        arr.append(ImageAndAns(image: "https://stuffedeyes.files.wordpress.com/2018/06/spain-2906824_960_720.png?w=640", answerCorrect: "Spain",inco1: "Israel",inco2: "Spain",inco3: "Germany",inco4: "UK"))
        arr.append(ImageAndAns(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRUIqiDeMSlW46i5wkWILkA_FQza-3kG-A_Q&usqp=CAU", answerCorrect: "France",inco1: "Germany",inco2: "Israel",inco3: "France",inco4: "UK"))
        arr.append(ImageAndAns(image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/2048px-Flag_of_Switzerland.svg.png", answerCorrect: "Switzerland",inco1: "Israel",inco2: "Switzerland",inco3: "UK",inco4: "United States"))
        arr.append(ImageAndAns(image: "https://thumbs.dreamstime.com/b/germany-flag-vector-file-86151751.jpg", answerCorrect: "Germany",inco1: "Germany", inco2: "Russia",inco3: "Uk", inco4: "Japan"))
        arr.append(ImageAndAns(image: "https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Flag_of_Poland.svg/1920px-Flag_of_Poland.svg.png", answerCorrect: "Poland",inco1: "France",inco2: "UK",inco3: "Poland", inco4: "Germany"))
        arr.append(ImageAndAns(image: "https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg", answerCorrect: "India",inco1: "Poland",inco2: "Israel",inco3: "India", inco4: "Morocco"))
        arr.append(ImageAndAns(image: "https://www.schoeler.de/files/theme/icons/Flaggen/Bildschirmfoto-2014-12-20-um-23.37.57.png", answerCorrect: "Japan",inco1: "Israel", inco2: "Egypt", inco3: "Japan", inco4: "India"))
        arr.append(ImageAndAns(image: "https://seeklogo.com/images/E/egypt-flag-logo-FE3F5C8464-seeklogo.com.png", answerCorrect: "Egypt", inco1: "Israel", inco2: "Egypt", inco3: "Japan", inco4: "India"))
        
        
        return arr
    }
    





}
