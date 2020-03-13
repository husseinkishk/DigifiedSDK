# DigifiedSDK

## Summary
- [x] Fast
- [x] Live scanning of Egyptian IDs
- [x] Auto cropping
- [x] OCR
- [x] Face Matching between front image and and selfie photo
- [x] Lightweight dependency

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- Swift 4.2
- iOS 11.0+

## Installation

DigifiedSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'DigifiedSDK', :git => 'https://github.com/husseinkishk/DigifiedSDK.git'
```
## Getting started with OCR



### Swift

- Make sure that your view controller conforms to the `ImageScannerControllerDelegate` protocol:

```swift
	class YourViewController: UIViewController, ImageScannerControllerDelegate {
		// YourViewController code here
	}
```

- Implement the delegate functions inside your view controller:


```
    func imageScannerController(_ scanner: ImageScannerController, topViewController: EditScanViewController, didFinishScanningWithResults results: ImageScannerResults) {
        // The user successfully scanned an image, which is available in the ImageScannerResults
        //self.frontSide = results.frontSide
        //self.backSide = results.backSide
    }
    
    func imageScannerController(_ scanner: ImageScannerController, topViewController: EditScanViewController?, didFailWithError error: Error?, results: ImageScannerResults?) {
        // You are responsible for carefully handling the error
        print(error)
        
    }
    
    func imageScannerController(networkActivityStarted scanner: ImageScannerController, topViewController: EditScanViewController) {
        // show animation here while uploading and verifying
    }
    
    func imageScannerControllerDidCancel(_ scanner: ImageScannerController) {
        // The user tapped 'Cancel' on the scanner
        // You are responsible for dismissing the ImageScannerController
        scanner.dismiss(animated: true)
    }
 
```

- Finally, create and present a `ImageScannerController` instance somewhere within your view controller for OCR with `imageScannerMode` set to `.extract`.

```swift
		// set the isLastImage to false if you're scanning a document with two faces
        let scannerViewController = ImageScannerController(isLastImage: isLastImage, imageScannerMode: .extract, token: "Sample Token", urlStr: "https://ocr-release.digified.io/extract")
        scannerViewController.imageScannerDelegate = self
        scannerViewController.modalPresentationStyle = .custom
        present(scannerViewController, animated: true)
```

## Getting started with OCR

### Swift
- repeat the first two steps in OCR then create and present a `ImageScannerController` instance somewhere within your view controller for face matching with  `imageScannerMode` set to `.faceMatching `

```
        let scannerViewController = ImageScannerController(imageScannerMode: .faceMatching, token: "Sample Token", urlStr: "https://fm-release.digified.io/match")
        scannerViewController.imageScannerDelegate = self
        scannerViewController.modalPresentationStyle = .fullScreen
        present(scannerViewController, animated: true)

```
## Author
husseinkishk, kishk.hussein@gmail.com
