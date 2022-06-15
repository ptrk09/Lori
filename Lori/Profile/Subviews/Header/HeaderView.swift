import UIKit
import SnapKit


final class HeaderView: UIView {
    private lazy var titleLabel: UILabel = {
        let label: UILabel = UILabel()
        
        label.text = "your items"
        label.font = .profileTitle
        label.textAlignment = .left
        label.textColor = UIColor(
            red: 242 / 255,
            green: 242 / 255,
            blue: 242 / 255,
            alpha: 1.0
        )
        
        return label
    }()
    
    private lazy var avatarView: UIView = {
        let avatarView: UIView = UIView()
        
        avatarView.layer.cornerRadius = 35
        avatarView.backgroundColor = UIColor(
            red: 215 / 255,
            green: 90 / 255,
            blue: 218 / 255,
            alpha: 1.0
        )
        
        return avatarView
    }()
    
    private lazy var addButton: UIButton = {
        let addButton: UIButton = UIButton(type: .system)
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
        let boldSearch = UIImage(systemName: "plus", withConfiguration: boldConfig)
        addButton.setImage(boldSearch, for: .normal)
        addButton.tintColor = UIColor(
            red: 217 / 255,
            green: 217 / 255,
            blue: 217 / 255,
            alpha: 1.0
        )
        
        return addButton
    }()
    
    
    func setup() {
        [titleLabel, avatarView, addButton].forEach {
            addSubview($0)
        }
        setupLayout()
    }
    
    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.height.equalTo(titleLabel.font.pointSize * 1.5)
            make.width.equalTo(200)
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(45)
        }
        
        avatarView.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.width.equalTo(70)
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
        
        addButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(30)
            make.right.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(45)
        }
    }
}
