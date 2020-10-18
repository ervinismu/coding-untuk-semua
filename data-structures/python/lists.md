# Data Structure on Python
## Lists
List is a collection which is ordered and changeable. Allows duplicate members.

The list data type has some more methods. Here are all of the methods of list objects.
### Append
```python
my_list = [1, 2, 3, 4]
my_list.append(5)
```
Add an item to the end of the my_list. Equivalent to `my_list[len(my_list):] = [5]`.
The `my_list` value will be [1, 2, 3, 4, 5]

### Extend
Add the elements of a list (or any iterable), to the end of the current list. Equivalent to a[len(a):] = iterable.
```python
fruits = ['apple', 'banana', 'cherry']
cars = ['Ford', 'BMW', 'Volvo']

fruits.extend(cars)
```
The `fruits` list value will be ['apple', 'banana', 'cherry', 'Ford', 'BMW', 'Volvo']

### Insert
Insert an item at a given position. The first argument is the index of the element before which to insert, so a.insert(0, x) inserts at the front of the list, and a.insert(len(a), x) is equivalent to a.append(x).

```python
fruits = ['apple', 'banana', 'cherry']
fruits.insert(1, "orange") # insert orange to index 1
```

The `fruits` list value will be ['apple', 'orange', 'banana', 'cherry']

### Remove
Remove the first item from the list whose value is equal to x. It raises a ValueError if there is no such item.
```python
fruits = ['apple', 'banana', 'cherry']
fruits.remove("banana")
```
The `fruits` list value will be ['apple', 'cherry']

### Pop
Remove the item at the given position in the list, and return it. If no index is specified, a.pop() removes and returns the last item in the list. (The square brackets around the i in the method signature denote that the parameter is optional, not that you should type square brackets at that position. You will see this notation frequently in the Python Library Reference.)

```python
fruits = ['apple', 'banana', 'cherry']
pop_list = fruits.pop(1)
```
The `fruits` list value will be ['apple', 'cherry'] and the `pop_list` value is "banana"

### Clear
Remove all items from the list. Equivalent to del a[:].

```python
fruits = ['apple', 'banana', 'cherry', 'orange']

fruits.clear()
```
The `fruits` list value will be [] (empty)

### Index
Return zero-based index in the list of the first item whose value is equal to x. Raises a ValueError if there is no such item.

The optional arguments start and end are interpreted as in the slice notation and are used to limit the search to a particular subsequence of the list. The returned index is computed relative to the beginning of the full sequence rather than the start argument.

```python
fruits = ['apple', 'banana', 'cherry']
cherry_index = fruits.index("cherry")
```
The `cherry_index` value is 2

### Count
Return the number of times x appears in the list.

```python
# count "cherry" on fruits list
fruits = ['apple', 'banana', 'cherry']
cherry_appear = fruits.count("cherry")
```
`cherry_appear` will be 1

### Sort
Sort the items of the list in place (the arguments can be used for sort customization, see sorted() for their explanation).
```python
cars = ['Ford', 'BMW', 'Volvo']
cars.sort()
```
Now `cars` list value is `['BMW', 'Ford', 'Volvo']`

### Reverse
Reverse the elements of the list in place.

```python
fruits = ['apple', 'banana', 'cherry']
fruits.reverse()
```
Now `fruits` list value is ['cherry', 'banana', 'apple']

### Copy
Return a shallow copy of the list. Equivalent to a[:].
```python
fruits = ['apple', 'banana', 'cherry', 'orange']
copied_list = fruits.copy()
```

The `copied_list` list will be has same value with `fruits` list