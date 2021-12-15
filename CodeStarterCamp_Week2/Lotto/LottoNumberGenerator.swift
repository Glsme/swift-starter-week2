//
//  LottoNumberGenerator.swift
//  CodeStarterCamp_Week2
//
//  Created by 조민호 on 2021/12/15.
//

import Foundation

protocol LottoNumberGeneratable {
    func generateLottoNumbers() -> Set<Int>
}

struct LottoNumberGenerator: LottoNumberGeneratable {    
    func generateLottoNumbers() -> Set<Int> {
        var lottoNumbers: Set<Int> = []
        
        while lottoNumbers.count != LottoOptions.lottoNumbersMaxAmount {
            lottoNumbers.insert(generateRandomNumbers())
        }
        
        return lottoNumbers
    }
        
    private func generateRandomNumbers() -> Int {
        Int.random(in: LottoOptions.randomNumberRange)
    }
}
