//
//  String+Extension.swift
//  MSExtension
//
//  Created by Fan on 2019/7/1.
//

import Foundation

public extension String {
    // MARK: - 手机号码判断
    var isPhoneNum: Bool {
        get{
            if self.count != 11 {
                return false
            }
            let mobileReg = "(^1[3-9]\\d{9}$)"
            /// 正则规则
            let regex = try? NSRegularExpression(pattern: mobileReg, options: [])
            /// 进行正则匹配
            if let results = regex?.matches(in: self as String, options: [], range: NSRange(location: 0, length: self.count)), results.count != 0 {
                return true
            }
            return false
        }
    }
    
    // MARK: - 密码格式判断
    var isPassword: Bool {
        get {
            let mobileReg = "(^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,18}$)"
            /// 正则规则
            let regex = try? NSRegularExpression(pattern: mobileReg, options: [])
            /// 进行正则匹配
            if let results = regex?.matches(in: self as String, options: [], range: NSRange(location: 0, length: self.count)), results.count != 0 {
                return true
            }
            return false
        }
    }
    // MARK: - 判断是否为表情
    var characterCodingOut: Bool {
        /* 遍历字符串的每一个字符 */
        for str in self {
            var byteCount = 0
            /* 计算字符串的编码字节长度 */
            /* UTF-8编码有可能是两个、三个、四个字节。Emoji表情是4个字节，而Mysql的utf8编码最多3个字节，所以数据插不进去。 */
            for _ in String(str).utf8 {
                byteCount = byteCount + 1
            }
            /* 大于等于四个字节的禁止输入 */
            if byteCount >= 4 {
                return true
            }
        }
        return false
    }
    
}
