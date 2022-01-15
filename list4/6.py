NULL = -1 # The null link

class HeapManager :
  def __init__(self,initialMemory) :
    self.memory = initialMemory
    self.memory[0] = self.memory.__len__()
    self.memory[1] = NULL
  
  def find_best_block(self, requestSize):
    p = 0
    max_size = self.memory[0]
    i = 0
    while p < len(self.memory):
      if self.memory[p] == requestSize and self.memory[p + 1] == -1:
        return p
      if max_size >= self.memory[p] and requestSize <= self.memory[p] and self.memory[p + 1] == -1:
        max_size = self.memory[p]
        i = p
      p += self.memory[p]
    return i if requestSize <= self.memory[i] and self.memory[i + 1] == -1 else NULL

  def allocate(self, requestSize) :
    size = requestSize + 1
    p = self.find_best_block(requestSize)
    if p == NULL :
      raise MemoryError ()
    
    self.memory[p + 1] = 1
    unused = self.memory[p] - size
    if unused > 1:
      nextFree = p + size
      self.memory[nextFree]= unused
      self.memory[nextFree + 1] = -1
      self.memory[p]= size
    return p + 1
  
  def deallocate(self, block):
    self.memory[block] = -1

def test () :
  h = HeapManager([0 for x in range (0, 10)])
  
  a = h.allocate (4)
  b = h.allocate (2)
  
  h.deallocate(a)
  c = h.allocate (2)
  d = h.allocate (3)

  print(h.memory)

test ()
