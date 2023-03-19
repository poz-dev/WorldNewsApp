//
//  HeaderView.swift
//  News
//
//  Created by Kresimir Ivanjko on 16.03.2023..
//

import UIKit

final class HeaderView: UIView {
    
    private var fontSize: CGFloat
    
    // MARK: - Headline label setup
    
    private lazy var headlineLabel: UILabel = {
       let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "News"
        v.font = UIFont.boldSystemFont(ofSize: fontSize)
        return v
    }()
    
    // Mark: - Header Circle image setup
    
    private lazy var headerCircleImage: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.contentMode = .scaleAspectFit
        let config = UIImage.SymbolConfiguration(pointSize: fontSize, weight: .bold)
        v.image = UIImage(systemName: "largecircle.fill.circle", withConfiguration: config)?.withRenderingMode(.alwaysOriginal)
        return v
    }()
    
    // Mark: - plus image setup
    
    private lazy var plusImage: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: fontSize, weight: .bold)
        v.image = UIImage(systemName: "plus", withConfiguration: config)?.withRenderingMode(.alwaysOriginal)
        return v
        
    }()
    
    private lazy var subHeadlineLabel: UILabel = {
       let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.font = v.font.withSize(fontSize)
        v.text = "Top Headline News"
        v.textColor = .gray
        return v
    }()
    
    // Mark: - Header stack View
    
    private lazy var headerStackView: UIStackView = {
        let v = UIStackView(arrangedSubviews: [headerCircleImage, headlineLabel, plusImage])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis = .horizontal
        return v
    }()
    
    // Mark: - Font setup
    
    init(fontSize: CGFloat) {
        self.fontSize = fontSize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Mark: - Add View
    
    func setupView() {
        
        addSubview(headerStackView)
        addSubview(subHeadlineLabel)
        
        
        setupConstraints()
    }
    func setupConstraints() {
        // news Header
        NSLayoutConstraint.activate([
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerStackView.topAnchor.constraint(equalTo: topAnchor)
            ])
        
        // subheadline
        NSLayoutConstraint.activate([
            subHeadlineLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            subHeadlineLabel.topAnchor.constraint(equalTo: headerStackView.bottomAnchor, constant: 20),
            subHeadlineLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
