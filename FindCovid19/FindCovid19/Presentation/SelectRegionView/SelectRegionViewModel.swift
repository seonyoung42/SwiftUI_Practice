//
//  SelectRegionViewModel.swift
//  FindCovid19
//
//  Created by 장선영 on 2023/08/10.
//

import Foundation
import Combine

class SelectRegionViewModel: ObservableObject {
    @Published var centers = [Center.Sido: [Center]]()
    private var cancellable = Set<AnyCancellable>()
    
    init(centerNetwork: CenterNetwork = CenterNetwork()) {
        
        centerNetwork.getCenterList()
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { [weak self] in
                    guard case .failure(let error) = $0 else { return }
                    print(error.localizedDescription)
                    self?.centers = [Center.Sido: [Center]]()
                
            }, receiveValue: { [weak self] centers in
                self?.centers = Dictionary(grouping: centers) { $0.sido }
            })
            .store(in: &cancellable)
    }
}
