//
//  API.swift
//  fff
//
//  Created by Takumi Fuzawa on 2020/12/02.
//

import UIKit

//WebAPIを使う
struct CovidAPI {
    static func getTotal(completion: @escaping (CovidInfo.Total) -> Void) {
        //情報を取ってくる
        let url = URL(string: "https://covid19-japan-web-api.now.sh/api/v1/total")
        //リクエストするためのURLに変換する
        let request = URLRequest(url: url!)
        //URLにリクエストを投げる
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    let result = try! JSONDecoder().decode(CovidInfo.Total.self, from: data)
                    completion(result)
                } catch {
                    print("error \(error)")
                }
            }
        }.resume()
    }
}

