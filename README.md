# Inria Internship exercises

#### Author: **_Zakaria ELKHAYARI_**

Clone this Repository - git clone .
To load the package go into the Monticello Browser (Under Tools on topbar or Ctrl+O+P).
Press the +repository button and select directory under that.
Then find the cloned repository and add that. You will then be able to load the .mcz format packages and use them.

## LinkedList


#### Class ALink

This is a link( or a node) class.

**Methods :**

- nextlink - return the next link
- nextlink: - set next link
- value - return the nodes value
- value: - set nodes value
- clearLinks - remove reference to next link

#### Class ALinkedList

This is the linked list class.

**Methods :**

- add: - add node to linkedlist
- addLast: - add node to end of linkedlist
- asArray - return linkedlist as an orderedCollection
- first - return first node on linkedlist
- last - return last node on linkedlist
- isEmpty - check if linkedlist is empty
- removeAll - empty the linkedlist
- removeFirst - remove first node from linkedlist
- removeLast - remove last node from linkedlist
- head: - set the first node
- head - return the first node
- tail: - set the last node
- tail - return the last node
- add:  at: - Add node at a given position of the linkedlist
- emptyCheck - Check if the linkedlist is empty
- get: - Get a given node

#### Tests 

- testAddElement - test case to add element
- testAddElementCorrectly - test case to add element correctly
- testFirstElement - test case to get the first element
- testLastElement - test case to get the last element
- testRemoveAll - test case to remove all elements
- testRemoveFirst - test case to remove first element
- testRemoveLast - test case to remove last element
- testAddAt - test case to add a node in a given position
- testAsArray - test case to get linkedlist as an array
- testGetNode - test case to get a node at a given position
- testAddLast - test case to add node as tail


## Small java doc


This is a program that takes a pharo class and produces a little HTML description of the class.

Seaside component that uses the DocApp to display the description of a given class

**Usage :**

Open a playground (Command + O + W), execute the following code :

```Smalltalk
ZnZincServerAdaptor startOn: 8080.
DAppRootComponent initialize
```

Then open [http://localhost:8080/DocApp](http://localhost:8080/DocApp)

![image 1](assets/integer.gif)
