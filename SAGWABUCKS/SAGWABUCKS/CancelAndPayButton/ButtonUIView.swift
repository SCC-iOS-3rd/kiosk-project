import UIKit

protocol ButtonUIViewDelegate: AnyObject {
    func cancelAll()
    func payAll()
}

class ButtonUIView: UIView {
    
    weak var delegate: ButtonUIViewDelegate?
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var payButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    func customInit() {
        if let view = Bundle.main.loadNibNamed("ButtonUIView", owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            addSubview(view)
        }
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        delegate?.cancelAll()
    }

    @IBAction func pay(_ sender: Any) {
        delegate?.payAll()
    }
}

extension ViewController: ButtonUIViewDelegate {
    func cancelAll() {
        
        let cancelAlert = UIAlertController(title: "전체 취소", message: "전체 취소 하시겠습니까?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "돌아가기", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "전체 취소", style: .default, handler: {action in
            print("취소 완료")
            self.totalLabel.text = "0 개"
            self.totalMoney.text = "0 원"
            self._order.clearOrder()
            self.tableView.reloadData()
            
            //전체 취소 누르고 진행시 추가 alert
            let cancelSuccessAlert = UIAlertController(title: "전체 취소 완료", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
            cancelSuccessAlert.addAction(okAction)
            self.cancelProcess(cancelSuccessAlert, animated: true, completion: nil)
            
        })
        
        if totalLabel.text == "0 개" {
            okAction.isEnabled = false
        } else {
            okAction.isEnabled = true
        }
        
        cancelAlert.addAction(okAction)
        cancelAlert.addAction(cancelAction)
        
        self.present(cancelAlert, animated: true)
    }
    
    func payAll() {
        
        let payAlert = UIAlertController(title: "결제 진행", message: "결제 하시겠습니까?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "결제", style: .default, handler: {action in print("결제 완료")
            self.totalLabel.text = "0 개"
            self.totalMoney.text = "0 원"
            self._order.clearOrder()
            self.tableView.reloadData()
            
            //결제 진행 및 결제 완료시 추가 alert
            let successAlert = UIAlertController(title: "결제 완료", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
            successAlert.addAction(okAction)
            self.present(successAlert, animated: true, completion: nil)
        })
        
        if totalLabel.text == "0 개" {
            okAction.isEnabled = false
        } else {
            okAction.isEnabled = true
        }
        
        payAlert.addAction(cancelAction)
        payAlert.addAction(okAction)
        
        self.present(payAlert, animated: true)
    }
}
