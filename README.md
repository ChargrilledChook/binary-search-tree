# Binary Search Trees

An assignment for The Odin Project. Version 1 completed 10/07/2020.

[Details and specs of assignment](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms?ref=lnav)

## Features

Builds a balanced binary search tree from an array of integers. Has several methods availbe to it including search, insertion, deletion, and a variety of different traversal methods (level order, different depth first strategies etc).

## Known Bugs

* Can't delete a direct child of the root node.

## Reflections

Quite a step up in difficulty from linked lists but learned a few good lessons. Particularly, don't try to DRY out code too soon before trying hard to see the most obvious abstractions. DRYing too fast lead me into a corner with the #delete method that was difficult to get out of.

Most of the code is ok, aside from #delete which I would redo from the ground up. Some of the tree traversal private methods could also be revisited.

This would be a good one to revisit after some more practice and study of algorithms and data structures.

## Visual Example of Output

```
"Balanced?   => true"
"Depth       => 3"
"Level order => [58, 17, 74, 6, 37, 70, 93, 5, 11, 28, 45, 66, 73, 77]"
"Pre order   => [58, 17, 6, 5, 11, 37, 28, 45, 74, 70, 66, 73, 93, 77]"
"In order    => [5, 6, 11, 17, 28, 37, 45, 58, 66, 70, 73, 74, 77, 93]"
"Post order  => [5, 11, 6, 28, 45, 37, 17, 66, 73, 70, 77, 93, 74, 58]"
│       ┌── 93
│       │   └── 77
│   ┌── 74
│   │   │   ┌── 73
│   │   └── 70
│   │       └── 66
└── 58
    │       ┌── 45
    │   ┌── 37
    │   │   └── 28
    └── 17
        │   ┌── 11
        └── 6
            └── 5
"Attempting to unbalance..."
"Balanced?   => false"
│                           ┌── 187
│                           │   │   ┌── 182
│                           │   └── 168
│                       ┌── 163
│                   ┌── 144
│                   │   └── 137
│               ┌── 130
│               │   │   ┌── 129
│               │   └── 110
│           ┌── 104
│       ┌── 93
│       │   └── 77
│   ┌── 74
│   │   │   ┌── 73
│   │   └── 70
│   │       └── 66
└── 58
    │       ┌── 45
    │   ┌── 37
    │   │   └── 28
    └── 17
        │   ┌── 11
        └── 6
            └── 5
"Balancing..."
"Balanced?   => true"
"Depth       => 4"
"Level order => [77, 45, 137, 17, 70, 110, 168, 6, 37, 66, 74, 104, 130, 163, 187, 5, 11, 28, 58, 73, 93, 129, 144, 182]"
"Pre order   => [77, 45, 17, 6, 5, 11, 37, 28, 70, 66, 58, 74, 73, 137, 110, 104, 93, 130, 129, 168, 163, 144, 187, 182]"
"In order    => [5, 6, 11, 17, 28, 37, 45, 58, 66, 70, 73, 74, 77, 93, 104, 110, 129, 130, 137, 144, 163, 168, 182, 187]"
"Post order  => [5, 11, 6, 28, 37, 17, 58, 66, 73, 74, 70, 45, 93, 104, 129, 130, 110, 144, 163, 182, 187, 168, 137, 77]"
│           ┌── 187
│           │   └── 182
│       ┌── 168
│       │   └── 163
│       │       └── 144
│   ┌── 137
│   │   │   ┌── 130
│   │   │   │   └── 129
│   │   └── 110
│   │       └── 104
│   │           └── 93
└── 77
    │       ┌── 74
    │       │   └── 73
    │   ┌── 70
    │   │   └── 66
    │   │       └── 58
    └── 45
        │   ┌── 37
        │   │   └── 28
        └── 17
            │   ┌── 11
            └── 6
                └── 5
                ```
