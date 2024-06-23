A Min-Heap is a complete binary tree in which the value in each internal node is smaller than or equal to the values in the children of that node
```

            5                      13
         /      \               /       \  
       10        15           16         31 
      /                      /  \        /  \
    30                     41    51    100   41
```

The operations on Min Heap:

-   `getMin():` It returns the root element of Min Heap. The Time Complexity of this operation is `O(1)`
-   `extractMin():` Removes the minimum element from MinHeap. The Time Complexity of this Operation is `O(Log n)` as this operation needs to maintain the heap property (by calling `heapify()`) after removing the root.
-   `insert():` Inserting a new key takes `O(Log n)` time. We add a new key at the end of the tree. If a new key is larger than its parent, then we don’t need to do anything. Otherwise, we need to traverse up to fix the violated heap property.