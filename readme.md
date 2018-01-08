## Break My Views!

# Background

This app demonstrates a bug using ScrollView and CollectionView in unison. The bug is only apparent on the iPhone X.

In order for a scroll view to read to the extreme top and bottom of a screen, you must add view constraints to the superview.

If you place a collection view inside that scroll view, and makke sure that a cell overlaps the bottom of the scroll view's visible window, then tapping anywhere on the scroll view will trigger a tap on that bottom cell.

# To replicate

- Build and run this app on an iPhone X
- Tap in the green area at the top of the scroll view
- In the console, you will see the index of whichever cell currently straddles the bottom of the collection view.
