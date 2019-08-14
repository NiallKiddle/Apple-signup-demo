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

## Controller options ##
When the Apple login controller is presented it gives the user some options to either change their name, select one of their emails tied with their appleID and to hide their email

**Change name** - User can change either their first name and or last name.
![Screenshot 2019-08-14 at 12 04 39](https://user-images.githubusercontent.com/32180688/63016723-54dd5100-be8c-11e9-9e66-fd155994caf8.png)

**Select other email** - The user can have multiple emails tied to their Apple ID account. This option allows them to visibly show their email, selecting the one they would prefer to continue with.

**Hide email** -  The user can select hide email which will generate a random email similar to the one shown below. This email changes every time the user logs in.

![Screenshot 2019-08-14 at 12 01 55](https://user-images.githubusercontent.com/32180688/63016685-39724600-be8c-11e9-85bd-58e68faff817.png)

If we wish to contact the user via their private email we will need to register our outbound email domains. 

> Some privacy-conscious users will choose to keep their personal email address private and use Apple’s private email relay service when setting up an account. To send email messages through the relay service to the users’ personal inboxes, you will need to register your outbound email domains. - Developer.Apple

More info: https://help.apple.com/developer-account/#/devf822fb8fc

***Note: None of these options affect the User token as this is tied to the apple account itself and will always remain the same.***

## Requirements ##
Logging in with Apple requires users to be on iOS 13 and uses Xcode 11 beta 5, Swift 5.1 meaning that there would need to be some updates to the existing code to compile and run.

For more information on the guidelines,  see here: https://developer.apple.com/sign-in-with-apple/get-started/

## Screenshot ##
![Simulator Screen Shot - iPhone 8 - 2019-08-14 at 11 18 05](https://user-images.githubusercontent.com/32180688/63014079-9a4a5000-be85-11e9-994a-58c090996d41.png)
