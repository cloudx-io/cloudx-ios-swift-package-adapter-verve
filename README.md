# CloudX Verve adapter Swift package

This repository distributes the Verve adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 26 or later (HyBid 3.9.0 is built with Swift 6.3)
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-verve.git
```

Select an exact package version from the compatibility table. Add the
`CloudXVerveAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | HyBid SDK |
| --- | --- | --- |
| `3090001.0.0` | `3.9.0.1` | `3.9.0` |

The package installs CloudX Core and HyBid SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `3.9.0.1` uses package version `3090001.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
