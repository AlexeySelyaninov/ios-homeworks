
//  LogInViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 08.06.2022.
//


import UIKit

class LogInViewController: UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        [logo, textFieldsContainerView, button].forEach(){view.addSubview($0)}
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.addSubview(contentView)
        return scrollView
    }()
    private lazy var textFieldsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        [logInTextField, passwordTextField].forEach(){view.addSubview($0)}
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    private  lazy var logInTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.layer.borderWidth = 0.25
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.placeholder = "Email or phone"
        textField.autocapitalizationType = .none
        textField.delegate = self
        return textField
    }()
    private  lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.layer.borderWidth = 0.25
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.placeholder = "Password"
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        textField.delegate = self
        return textField
    }()
    
    private  lazy var button : UIButton = {
        let button = UIButton()
        button.setTitle("LogIn", for: .normal)
        button.layer.cornerRadius = 10
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(goToProfile), for: .touchUpInside)
        return button
    }()
    
    private  lazy var logo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "logo"))
        return logo
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        textFieldsContainerView.translatesAutoresizingMaskIntoConstraints = false
        logInTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // scrollView
            scrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            // contentView
            contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            // logo
            logo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120),
            logo.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            logo.heightAnchor.constraint(equalToConstant: 100),
            logo.widthAnchor.constraint(equalToConstant: 100),
            // textFieldContainerView
            textFieldsContainerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            textFieldsContainerView.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 120),
            textFieldsContainerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            textFieldsContainerView.heightAnchor.constraint(equalToConstant: 100),
            // logIn
            logInTextField.leftAnchor.constraint(equalTo: textFieldsContainerView.leftAnchor),
            logInTextField.topAnchor.constraint(equalTo: textFieldsContainerView.topAnchor),
            logInTextField.widthAnchor.constraint(equalTo: textFieldsContainerView.widthAnchor),
            logInTextField.heightAnchor.constraint(equalTo: textFieldsContainerView.heightAnchor, multiplier: 0.5),
            // password
            passwordTextField.leftAnchor.constraint(equalTo: textFieldsContainerView.leftAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: textFieldsContainerView.bottomAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: textFieldsContainerView.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: textFieldsContainerView.heightAnchor, multiplier: 0.5),
            // button
            button.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: textFieldsContainerView.bottomAnchor, constant: 16),
            button.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor)
        ])
    }
    @objc
    func goToProfile(){
        let profileVC = ProfileViewController()
        //        navigationController?.pushViewController(profileVC, animated: true)
        self.present(profileVC, animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(kbdShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        nc.addObserver(self, selector: #selector(kbdHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let nc = NotificationCenter.default
        nc.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        nc.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc
    func kbdShow(notification: NSNotification){
        if let kbdSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue{
            scrollView.contentInset.bottom = kbdSize.height + 50
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbdSize.height + 100, right: 0)
        }
    }
    @objc
    func kbdHide(){
        scrollView.contentInset = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }
    
}
extension LogInViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
