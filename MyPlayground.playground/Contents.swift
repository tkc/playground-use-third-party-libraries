
import Alamofire
import XCPlayground

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

let parameters: [String:AnyObject] = [
    "test": 1,
]

Alamofire.request(.GET, "http://b.hatena.ne.jp/entry/jsonlite/?url=http%3A%2F%2Fwww.hatena.ne.jp%2F", parameters: parameters).responseJSON {
    response in
    if let JSON = response.result.value {
        JSON
    }
    XCPlaygroundPage.currentPage.needsIndefiniteExecution = false
}