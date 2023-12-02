= Algoritmi di "Algoritmi e Strutture Dati"

== InseritonSort
=== Codice
```c InseritonSort(A)``` \
#h(1cm)```c n = A.lenght``` \
#h(1cm)```c  for j=2 to n``` \
#h(2cm)```c key = A[j]``` \
#h(2cm)```c i = j - 1``` \
#h(2cm)```c while(i>0) and (A[i]>key)```\
#h(3cm)```c A[i+1] = A[i]```\
#h(3cm)```c i = i -1```\
#h(2cm)```c A[i+1] = key```\

=== Costo
$ ~n^2$

== MergeSort
=== Codice
```c MergeSort(A,p,r)```\
#h(1cm)```c if p < r```\
#h(2cm)```c q = (p+r)/2```\
#h(2cm)```c MergeSort(A,p,q)```\
#h(2cm)```c MergeSort(A,q+1,r)```\
#h(2cm)```c Merge(A,p,q,r)```\
\
```c Merge(A,p,q,r)```\
#h(1cm)```c n1 = q-p+1```\
#h(1cm)```c n2 = r-q```\
#h(1cm)```c crea L[1...n1+1]```\
#h(1cm)```c crea R[1...n2+1]```\
#h(1cm)```c for i=1 to n1```\
#h(2cm)```c L[i] = A[p+i-1]```\
#h(1cm)```c for j=1 to n2```\
#h(2cm)```c R[j] = A[q+j]```\
#h(1cm)```c L[n1+1] = R[n2+1] = infinity \\elemento sentinella```\
#h(1cm)```c i = j = 1```\
#h(1cm)```c for k=p to r```\
#h(2cm)```c if L[i] <= R[j]```\
#h(3cm)```c A[k] = L[i]```\
#h(3cm)```c i++```\
#h(2cm)```c else```\
#h(3cm)```c A[k] = R[j]```\
#h(3cm)```c j++```\

=== Costo
$~n log n$

== InsertionSort Ricorsivo
=== Codice
```c InsertionSort_Rec(A)```\
#h(1cm)```c if j>1```\
#h(2cm)```c InseritonSort_Rec(A,j-1)```\
#h(2cm)```c Insert(A,j)```\
\
```c Insert(A,j)```\
#h(1cm)```c if (j>1) and (A[j-1]>A[j])```\
#h(2cm)```c A[j-1]<=>A[j]```\
#h(2cm)```c Inser(A,j-1)```\

== HeapSort
=== Codice
```c Parent(i)```\
#h(1cm)```c return i/2```\
\
```c Letf(i)```\
#h(1cm)```c return i*2```\
\
```c Right(i)```\
#h(1cm)```c return i*2+1```\
\
```c MaxHeapify(A,i)```\
#h(1cm)```c l = Left(i)```\
#h(1cm)```c r = Right(i)```\
#h(1cm)```c if (l<=A.size) and (A[l]>A[i])```\
#h(2cm)```c max = l```\
#h(1cm)```c else```\
#h(2cm)```c max = i```\
#h(1cm)```c if (r<=A.size) and (A[r]>A[max])```\
#h(2cm)```c max = r```\
#h(1cm)```c if max != i```\
#h(2cm)```c A[i]<=>A[max]```\
#h(2cm)```c MaxHeapify(A,max)```\
\
```c BuildMaxHeap(A)```\
#h(1cm)```c A.size = A.lenght```\
#h(1cm)```c for i=(A.size)/2 to 1```\
#h(2cm)```c MaxHeapify(A,i)```\
\
```c HeapSort(A)```\
#h(1cm)```c BuildMaxHeap(A)```\
#h(1cm)```c for i = A.length to 2```\
#h(2cm)```c A[1]<=>A[i]```\
#h(2cm)```c A.size = A.size-1```\
#h(2cm)```c MaxHeapify(A,1)```\
\
```c Max(A)```\
#h(1cm)```c return A[1]```\
\
```c ExtractMax(A)```\
#h(1cm)```c max = A[1]```\
#h(1cm)```c A[1] = A[size]```\
#h(1cm)```c A.size = A.size-1```\
#h(1cm)```c MaxHeapify(A,1)```\
\
```c MaxHeapifyUp(A,i)```\
#h(1cm)```c if (i>1) and (A[i]>A[parent(i)])```\
#h(2cm)```c A[i]<=>A[parent(i)]```\
#h(2cm)```c MaxHeapifyUp(A,parent(i))```\
\
```c Insert(A,k)```\
#h(1cm)```c A.size = A.size+1```\
#h(1cm)```c A[A.size] = k```\
#h(1cm)```c MaxHeapifyUp(A,A.size)```\
\
```c IncreaseKey(A,i,s)```\
#h(1cm)```c A[i] = A[i]+s```\
#h(1cm)```c MaxHeapifyUp(A,i)```\

=== Costo
MaxHeapify = $O(log n) $\
BuildMaxHeap = $O(n log n)$\
HeapSort = $O(n log n)$\
Max = $O(1)$\
ExtractMax = $O(log n)$\
MaxHeapifyUp = $O(log n)$\
Insert = $O(log n)$\
IncreaseKey = $O(log n)$\

== QuickSort
=== Codice

```c QuickSort(A,p,r)```\
#h(1cm)```c if p<r```\
#h(2cm)```c q = Partition(A,p,r)```\
#h(2cm)```c QuickSort(A,p,q-1)```\
#h(2cm)```c QuickSort(A,q+1,r)```\
\
```c Partition(A,p,r)```\
#h(1cm)```c x = A[r]```\
#h(1cm)```c i = p-1```\
#h(1cm)```c for j=p to r-1```\
#h(2cm)```c if A[j]<=x```\
#h(3cm)```c i = i+1```\
#h(3cm)```c A[i]<=>A[j]```\
#h(2cm)```c else```\
#h(3cm)```c A[i+1]<=>A[r]```\
#h(1cm)```c return i+1```\
\

```c RandomizedPartition(A,p,r)```\
#h(1cm)```c i = Random(p,r)```\
#h(1cm)```c A[r]<=>A[i]```\
#h(1cm)```c return Partition(A,p,r)```\

=== Costo
$O(n log n)$

