class Node:
    def __init__(self) -> None:
        self.n = 0
        self.e = ''

class EmptyStackException(Exception):
    pass

class Stack:
    def __init__(self) -> None:
        self.top = Node()
    
    def add(self, val) -> None:
        node = Node()
        node.e = val
        node.n = self.top
        self.top = node

    def remove(self) -> str:
        if not self.isNotEmpty():
            raise EmptyStackException()
        top = self.top
        next = top.n

        self.top = next
        return top.e

    def isNotEmpty(self) -> bool:
        return self.top.n != 0
