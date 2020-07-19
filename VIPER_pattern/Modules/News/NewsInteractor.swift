//
//  NewsInteractor.swift
//  VIPER_patternS
//
//  Created by Supanut Laddayam on 19/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class NewsInteractor: NewsInteractorInterface {
    weak var presenter: NewsInteractorDelegate?
    
     lazy var operationQueue = OperationQueue()
    
    func loadNews() {
      
        let emptyForm = EmptyForm(apiKey: nil)
        
        operationQueue.addOperation(ServiceLocator.shared.userService.getNEWS(emptyForm, completionBlock: { result in
            print(">>>>>\(result)")
            switch result {
            case let .success(reponse):
                self.presenter?.reciveFetchData(response: reponse)
            
            case let .failure(error):
                print(error)
            }
        }))
    }
}
