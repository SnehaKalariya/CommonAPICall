/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Options : Codable {
	let id : String?
	let order_index : String?
	let override_bank_id : String?
	let override_item_code : String?
	let name : String?
	let card_type : [Card_type]?
	let makePaymentCreditUrl : String?
	let is_active : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case order_index = "order-index"
		case override_bank_id = "override_bank_id"
		case override_item_code = "override_item_code"
		case name = "name"
		case card_type = "card-type"
		case makePaymentCreditUrl = "makePaymentCreditUrl"
		case is_active = "is_active"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		order_index = try values.decodeIfPresent(String.self, forKey: .order_index)
		override_bank_id = try values.decodeIfPresent(String.self, forKey: .override_bank_id)
		override_item_code = try values.decodeIfPresent(String.self, forKey: .override_item_code)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		card_type = try values.decodeIfPresent([Card_type].self, forKey: .card_type)
		makePaymentCreditUrl = try values.decodeIfPresent(String.self, forKey: .makePaymentCreditUrl)
		is_active = try values.decodeIfPresent(Int.self, forKey: .is_active)
	}

}
