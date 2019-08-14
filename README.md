# Sign up with Apple #
The code below shows the `ASAuthorization.Scope` which is written as a Struct. It is likely Apple will extend what we have access to i.e. the user's image, date of birth etc. But for now it is just Full Name and Email.

```
extension ASAuthorization.Scope {
    
    @available(iOS 13.0, *)
    public static let fullName: ASAuthorization.Scope

    @available(iOS 13.0, *)
    public static let email: ASAuthorization.Scope
}
```

Example token that is received when signing in, along with Full Name and Email.
`000126.348b846615454e4f985ce351a3392n06.0257`

## Delegates ##
When creating an `ASAuthorizationController`, you will need to conform to the `ASAuthorizationControllerDelegate` and `ASAuthorizationControllerPresentationContextProviding`. 

**ASAuthorizationControllerDelegate** - Includes two methods for handling the success and error states (`didCompleteWithAuthorization` and `didCompleteWithError`)

**ASAuthorizationControllerPresentationContextProviding** - Includes a method to return the window in which we were presenting the controller `presentationAnchor`.

## Requirements ##
Logging in with Apple requires users to be on iOS 13 and uses Xcode 11 beta 5, Swift 5.1 meaning that there would need to be some updates to the existing code to compile and run.

## Screenshot ##
![Simulator Screen Shot - iPhone 8 - 2019-08-14 at 11 18 05](https://user-images.githubusercontent.com/32180688/63014079-9a4a5000-be85-11e9-994a-58c090996d41.png)
