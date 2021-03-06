import Cocoa

public extension CollectionView {
  public static var collectionViewHeaderType: NSCollectionView.SupplementaryElementKind { return .sectionHeader }
  public static var collectionViewFooterType: NSCollectionView.SupplementaryElementKind { return .sectionFooter }

  public var contentOffset: CGPoint {
    get { return enclosingScrollView?.documentVisibleRect.origin ?? .zero }
    set { scroll(newValue) }
  }

  var visibleIndexPaths: Set<IndexPath> {
    return indexPathsForVisibleItems()
  }

  var documentRect: CGRect {
    return enclosingScrollView?.documentVisibleRect ?? .zero
  }

  convenience public init(frame: CGRect, collectionViewLayout: CollectionViewFlowLayout) {
    self.init(frame: frame)
    self.collectionViewLayout = collectionViewLayout
  }
}
