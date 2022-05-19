
import Kingfisher
import UIKit



class gmaeView: UIViewController {
    
    @IBOutlet weak var progressBarView: UIProgressView!
    @IBOutlet weak var image_gameOver: UIImageView!
    @IBOutlet weak var LBL_GameOver: UILabel!
    @IBOutlet weak var ans1: UIButton!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var ans2: UIButton!
    @IBOutlet weak var ans3: UIButton!
    @IBOutlet weak var ans4: UIButton!
    @IBOutlet weak var lifeLBL: UILabel!
    @IBOutlet weak var ImageGame: UIImageView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var CounterQu: UILabel!
    
    var index : Int = 0
    var life : Int = 3
    var reachedEnd : Bool = false
    var score : Int = 0
    var counter : Int = 0
    var c1 :Int = 1
    var timer : Timer!
    var arr : [ImageAndAns]? = []
    
    
    
    
    
    @IBAction func ans1(_ sender: Any) {
        loseLifeOrGoUpScore(bool: cheke(num: 0))
//
        if(life>0&&reachedEnd==false){
            goToNextQuestion()
            setQustion()
        }
        else{
           // sleep(5)
         hiddenallViews()
            timer = Timer.scheduledTimer(timeInterval: 7.0, target: self, selector:#selector(finishScreen) , userInfo: nil, repeats: false)

        }
        
    }
 
    
    @IBAction func ans2(_ sender: Any) {
        loseLifeOrGoUpScore(bool: cheke(num: 1))
        if(life>0&&reachedEnd==false){

            goToNextQuestion()
            setQustion()
        }
        else{
            hiddenallViews()
            timer = Timer.scheduledTimer(timeInterval: 7.0, target: self, selector:#selector(finishScreen) , userInfo: nil, repeats: false)
            //sleep(7)
           // dismiss (animated: true, completion: nil)



        }
    }
    
    
    @IBAction func ans3(_ sender: Any) {
        loseLifeOrGoUpScore(bool: cheke(num: 2))
        if(life>0&&reachedEnd==false){

            goToNextQuestion()
            setQustion()
        }
        else{
           hiddenallViews()
            timer = Timer.scheduledTimer(timeInterval: 7.0, target: self, selector:#selector(finishScreen) , userInfo: nil, repeats: false)
           // sleep(7)
           // dismiss (animated: true, completion: nil)



        }
        
        
    }
    
    @IBAction func ans4(_ sender: Any) {
        loseLifeOrGoUpScore(bool: cheke(num: 3))
        if(life>0&&reachedEnd==false){

            goToNextQuestion()
            setQustion()
        }
        else{
           hiddenallViews()
            timer = Timer.scheduledTimer(timeInterval: 7.0, target: self, selector:#selector(finishScreen) , userInfo: nil, repeats: false)
         //  delegate?.gameScore(position: score)
          //  sleep(7)
          //  dismiss (animated: true, completion: nil)



        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        arr=ImageAndAns().imageAndAnsData()
        progressBarView.setProgress(0, animated: false)
            setQustion()
      
    
    
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @objc func  finishScreen(){
       dismiss (animated: true, completion: nil)

   }
  
    func goToNextQuestion(){
        if index + 1 < 15 {
            index+=1
            c1+=1
            counter+=1
            CounterQu.text =  "\(c1)/15"
            self.progressBarView.setProgress(Float(counter)/15, animated: true)
        }
        else{
            reachedEnd = true
        }
        
    }
 
    func hiddenallViews(){
        View1.isHidden = true
        View2.isHidden = true
        image_gameOver.isHidden = false
        LBL_GameOver.isHidden = false
        LBL_GameOver.text = "your score : \(score)"
    }
   
    
    func setQustion(){

        // set image
        let url = URL(string :arr?[index].getImage() ?? " ")
        ImageGame.kf.setImage(with: url)
        ans1.setTitle(arr?[index].arrAnswerIncorrect[0], for: .normal)
        ans2.setTitle(arr?[index].arrAnswerIncorrect[1], for: .normal)
        ans3.setTitle(arr?[index].arrAnswerIncorrect[2], for: .normal)
        ans4.setTitle(arr?[index].arrAnswerIncorrect[3], for: .normal)




    }

    func cheke (num :Int)->Bool{
        var ans = arr![index].getAnswer()
       
        if(arr![index].arrAnswerIncorrect[num].elementsEqual(ans)){
                return true
            }
        
        return false
    }
    
    
    func loseLifeOrGoUpScore(bool:Bool){
        if(bool==false){
            life-=1
            lifeLBL.text="X  \(life)"
        }
        else{
            score+=1
        }
    }
    
 
    
   
    
    
    
}
