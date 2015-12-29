//
//  TextFieldRowModel.swift
//  Authenticator
//
//  Copyright (c) 2015 Authenticator authors
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

struct TextFieldRowModel<Action> {
    let label: String
    let placeholder: String

    let autocapitalizationType: UITextAutocapitalizationType
    let autocorrectionType: UITextAutocorrectionType
    let keyboardType: UIKeyboardType
    let returnKeyType: UIReturnKeyType

    let value: String
    let changeAction: (String) -> Action
}

func IssuerRowModel(value value: String, changeAction: (String) -> Form.Action) -> TextFieldRowModel<Form.Action> {
    let label = "Issuer"
    let placeholder = "Some Website"

    let autocapitalizationType: UITextAutocapitalizationType = .Words
    let autocorrectionType: UITextAutocorrectionType = .Default
    let keyboardType: UIKeyboardType = .Default
    let returnKeyType: UIReturnKeyType = .Next

    return TextFieldRowModel(
        label: label,
        placeholder: placeholder,
        autocapitalizationType: autocapitalizationType,
        autocorrectionType: autocorrectionType,
        keyboardType: keyboardType,
        returnKeyType: returnKeyType,
        value: value,
        changeAction: changeAction
    )
}

func NameRowModel(value value: String, returnKeyType: UIReturnKeyType, changeAction: (String) -> Form.Action) -> TextFieldRowModel<Form.Action> {
    let label = "Account Name"
    let placeholder = "user@example.com"

    let autocapitalizationType: UITextAutocapitalizationType = .None
    let autocorrectionType: UITextAutocorrectionType = .No
    let keyboardType: UIKeyboardType = .EmailAddress

    return TextFieldRowModel(
        label: label,
        placeholder: placeholder,
        autocapitalizationType: autocapitalizationType,
        autocorrectionType: autocorrectionType,
        keyboardType: keyboardType,
        returnKeyType: returnKeyType,
        value: value,
        changeAction: changeAction
    )
}

func SecretRowModel(value value: String, changeAction: (String) -> Form.Action) -> TextFieldRowModel<Form.Action> {
    let label = "Secret Key"
    let placeholder = "•••• •••• •••• ••••"

    let autocapitalizationType: UITextAutocapitalizationType = .None
    let autocorrectionType: UITextAutocorrectionType = .No
    let keyboardType: UIKeyboardType = .Default
    let returnKeyType: UIReturnKeyType = .Done

    return TextFieldRowModel(
        label: label,
        placeholder: placeholder,
        autocapitalizationType: autocapitalizationType,
        autocorrectionType: autocorrectionType,
        keyboardType: keyboardType,
        returnKeyType: returnKeyType,
        value: value,
        changeAction: changeAction
    )
}