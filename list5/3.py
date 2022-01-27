class Node:
    def __init__(self) -> None:
        self.n = 0
        self.e = ''

class EmptyQueueException(Exception):
    pass

class Queue:
    def __init__(self) -> None:
        dummy = Node()
        self.front = dummy
        self.back = dummy
    
    def add(self, val) -> None:
        new = Node()
        new.e = val

        if not self.isNotEmpty():
            self.front.n = new
            self.back = new
        else:
            self.back.n = new
            self.back = new

    def remove(self) -> str:
        if not self.isNotEmpty():
            raise EmptyQueueException()
        
        to_remove = self.front.n
        new_front = to_remove.n
        self.front.n = new_front
        return to_remove.e

    def isNotEmpty(self) -> bool:
        return self.front.n != 0

    def getSmaller(self) -> str:
        if not self.isNotEmpty():
            return ''
        curr = self.front.n
        smaller_seen = None
        while curr != 0:
            if smaller_seen is None:
                smaller_seen = curr.e
            else:
                smaller_seen = smaller_seen if smaller_seen < curr.e else curr.e
            curr = curr.n
        
        return smaller_seen
