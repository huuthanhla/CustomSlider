import UIKit

class ViewController: UIViewController {
    var rangeSlider: RangeSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rangeSlider = setupSlider()
        view.addSubview(rangeSlider)
        
        rangeSlider.addTarget(self, action: #selector(self.rangeSliderValueChanged(_:)), for: .valueChanged)
        
    }
    
    func setupSlider() -> RangeSlider {
        let rangeSlider = RangeSlider(frame: CGRect.zero)
        rangeSlider.trackHighlightTintColor = .orange
        return rangeSlider
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length, width: width, height: 20)
    }
    
    @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
        print("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }
}
