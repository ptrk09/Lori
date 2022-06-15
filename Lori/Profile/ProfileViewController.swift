import UIKit

final class ProfileViewController: UIViewController {
	private let output: ProfileViewOutput
    
    private lazy var headerView: HeaderView = {
        let header: HeaderView = HeaderView()
        
        header.setup()
        
        return header
    }()

    init(output: ProfileViewOutput) {
        self.output = output

        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

	override func viewDidLoad() {
		super.viewDidLoad()
        
        view.backgroundColor = UIColor(
            red: 29 / 255,
            green: 29 / 255,
            blue: 29 / 255,
            alpha: 1.0
        )
        
        [headerView].forEach {
            view.addSubview($0)
        }
        
        setupLayout()
	}
    
    private func setupLayout() {
        headerView.snp.makeConstraints { make in
            make.height.equalTo(175)
            make.horizontalEdges.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
}

extension ProfileViewController: ProfileViewInput {
}
