class Node
  attr_accessor :next;
  attr_accessor :prev;
  attr_reader   :value;
  def initialize(value)
    @value = value;
    @prev  = nil
    @next  = nil
  end
  def to_s
    "#{value}"
  end
  def to_i
    @value.to_i;
  end
end

class DoubleLinkedList
  attr_accessor :head;
  def initialize(value)
    h = Node.new(value);
    @head = h;
    h.prev = nil;
    h.next = nil;
  end

  def carry(a, b)
    return (a.to_i + b.to_i) / 10 if !a.nil? && !b.nil?;
    return 0 if a.nil? || b.nil?
  end

  def +(b)
    a = self.last;
    b = b.last;
    d = DoubleLinkedList.new((a.value.to_i + b.value.to_i) % 10);
    c = carry(a, b);
    a = a.prev;
    b = b.prev;
    while (!a.nil? || !b.nil?)
      d.prepend((a.value.to_i + b.value.to_i) % 10 + c);
      c = carry(a, b);
      a = a.prev;
      b = b.prev;
    end
    d.prepend(c) if c > 0;
    return d;
  end

  #add to the end of the list
  def append(value)
    a = Node.new(value);
    a.prev = last;
    a.next = nil;
    a.prev.next = a; #prev now 2nd last
  end

  #add to the beginning of the list
  def prepend(value)
    p = Node.new(value);
    p.prev = nil;
    p.next = self.head;
    self.head.prev = p;
    self.head = p;
  end

  #return last node in list
  def last
    node = @head;
    return node if node.next.nil?
    until (node.next.nil?) #until end of list
      node = node.next
      return node if node.next.nil?
    end
  end

  #print the list 
  def myprint
    node = @head
    print "(#{node.value}";
    until (node.next.nil?)
      node = node.next;
      print " -> #{node.value}";
    end
    print ")";
  end
end
d1 = DoubleLinkedList.new(3);
d1.prepend(4);
d1.prepend(2);
d2 = DoubleLinkedList.new(5);
d2.append("6");
d2.append("4");
d3 = d1 + d2;
d1.myprint;
print " + ";
d2.myprint;
print " = ";
d3.myprint;
