---
layout: algo
index: true
comments: true
title: Tree sort
tags:
  - Sort
modifier: 'false'
modtime: '2017-12-06T01:32:15.528Z'

---
{% capture section_desc %}Tree sort is a sorting algorithm that is based on Binary Search Tree data structure. It first creates a binary search tree from the elements of the input list or array and then performs an in-order traversal on the created binary search tree to get the elements in sorted order.{% endcapture %}
{% capture section_complexity %}Average Case Time Complexity : O(n log n) Adding one item to a Binary Search tree on average takes O(log n) time. Therefore, adding n items will take O(n log n) time

Worst Case Time Complexity : O(n2). The worst case time complexity of Tree Sort can be improved by using a self-balancing binary search tree like Red Black Tree, AVL Tree. Using self-balancing binary tree Tree Sort will take O(n log n) time to sort the array in worst case.{% endcapture %}
{% capture section_pseudocode %}Input: Array of values to be sorted.
Output: Array of sorted values.

Create the tree with the value and the left and right nodes.

struct Node
{
    int key;
    struct Node *left, *right;
};

Create the new node with the value in the unsorted array.

struct Node *newNode(int item)
{
    struct Node *temp = new Node;
    temp->key = item;
    temp->left = temp->right = NULL;
    return temp;
}
 
Store the new node in the BST based on the value.

void storeSorted(Node *root, int arr[], int &i)
{
    if (root != NULL)
    {
        storeSorted(root->left, arr, i);
        arr[i++] = root->key;
        storeSorted(root->right, arr, i);
    }
}
 
Insert the new node in the BST.

Node* insert(Node* node, int key)
{
    /* If the tree is empty, return a new Node */
    if (node == NULL) return newNode(key);
 
    /* Otherwise, recur down the tree */
    if (key < node->key)
        node->left  = insert(node->left, key);
    else if (key > node->key)
        node->right = insert(node->right, key);
 
    /* return the (unchanged) Node pointer */
    return node;
}{% endcapture %}
{% capture section_edu %}https://www.youtube.com/watch?v=n2MLjGeK7qA{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}