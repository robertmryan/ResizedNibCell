### ResizedNibCell Demo

To make self-sizing cells that adjust based upon constraints updated at runtime, you need to:

1. Define cells to be self-sizing:

        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = CGSize(width: collectionView!.bounds.width - 50, height: 416)
        layout.itemSize = UICollectionViewFlowLayoutAutomaticSize

2. Make the constraints priority to be less than 1000 (999 is a good value).

 Note, when I did that with this NIB, it stretch the label above the two views with the height constraints, so I increased its "content hugging" priority to 1000 and it was formatted properly. I also tweaked the compression priority of the image view and web view.

As a result of the above, the cells are resized appropriately for both small iPhone 5S and large iPhone 7+ (and everything in between).

This was created as a follow-up to a question on Stack Overflow:

 - https://stackoverflow.com/questions/46114350/ambiguous-position-for-uiview-in-uicollectionviewcell

This was created in Xcode 8.3.3 using Swift 3 for iOS 10.3.1 target, but the concepts are applicable to a variety of OS versions. 

---

Robert M. Ryan</br>
12 Sept 2017
