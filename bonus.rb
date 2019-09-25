# bonus.rb started 09/22/2019 by Gregory Eglen

# Begin Provided Code
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def check_infinite(start)
  tortise = start
  hare = start

  loop do
    if hare == nil
      return 'No Loop Found'
    end

    hare = hare.next_node

    if hare == nil
      return 'No Loop Found'
    end

    hare = hare.next_node
    tortise = tortise.next_node

    if hare == tortise
      return 'Loop Found'
    end
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# This is the code that triggers the infinity loop. Comment out to test if method will produce "false"
node1.next_node = node3

puts check_infinite(node3)

# Goal: Write a method that returns "true" if the LinkedList is an infinite LinkedList, or "false" if it ends.


