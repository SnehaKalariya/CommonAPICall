/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Json4Swift_Base : Codable {
	let options : [Options]?
	let cID_Unique : String?
	let expiry_Date : String?
	let sSLBypass : String?
	let tXTPAYCATEGORY : String?
	let dEFAULT_CATEGORY : String?
	let oTP_Read : String?
	let images : [Images]?

	enum CodingKeys: String, CodingKey {

		case options //= "options"
		case cID_Unique = "CID_Unique"
		case expiry_Date = "Expiry_Date"
		case sSLBypass = "SSLBypass"
		case tXTPAYCATEGORY = "TXTPAYCATEGORY"
		case dEFAULT_CATEGORY = "DEFAULT_CATEGORY"
		case oTP_Read = "OTP_Read"
		case images = "images"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		options = try values.decodeIfPresent([Options].self, forKey: .options)
		cID_Unique = try values.decodeIfPresent(String.self, forKey: .cID_Unique)
		expiry_Date = try values.decodeIfPresent(String.self, forKey: .expiry_Date)
		sSLBypass = try values.decodeIfPresent(String.self, forKey: .sSLBypass)
		tXTPAYCATEGORY = try values.decodeIfPresent(String.self, forKey: .tXTPAYCATEGORY)
		dEFAULT_CATEGORY = try values.decodeIfPresent(String.self, forKey: .dEFAULT_CATEGORY)
		oTP_Read = try values.decodeIfPresent(String.self, forKey: .oTP_Read)
		images = try values.decodeIfPresent([Images].self, forKey: .images)
	}

}
