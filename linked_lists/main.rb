# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    if @head.nil?
      prepend(value)
    else
      temp = @head
      temp = temp.next_node until temp.next_node.nil?
      temp.next_node = Node.new(value)
      @size += 1
    end
  end

  def prepend(value)
    if @head
      current_node = @head
      @head = Node.new(value, current_node)
    else
      @head = Node.new(value)
    end
    @size += 1
  end

  def list_size
    puts "Total size of this linked list is #{@size}."
  end

  def list_head
    if @head
      puts "The head node value is #{@head.value}."
    else
      puts 'There is no head node.'
    end
  end

  def list_tail
    if @head
      temp = @head
      temp = temp.next_node until temp.next_node.nil?
      puts "The tail node is #{temp.value}."
    else
      puts 'There is no tail node.'
    end
  end

  def pop
    if @head.next_node.nil?
      @head = nil
    else
      temp = @head
      while temp.next_node.nil? == false
        curr = temp
        temp = curr.next_node
        curr.next_node = nil if temp.next_node.nil?
      end
    end
    @size += 1
  end

  def to_s
    list_string = ''
    if @head.nil?
      puts 'There is no list.'
    else
      temp = @head
      while temp.next_node
        list_string += "( #{temp.value} )->"
        temp = temp.next_node
        list_string += "( #{temp.value} )-> nil" if temp.next_node.nil?
      end
    end
    list_string
  end

  def contains?(value)
    temp = @head
    while temp.nil? == false
      return true if temp.value == value

      temp = temp.next_node
    end
    false
  end

  def at(index)
    i = 0
    temp = @head
    while temp
      return temp.value if i == index

      temp = temp.next_node
      i += 1
    end
  end

  def find(value)
    i = 0
    temp = @head
    while temp
      return i if temp.value == value

      temp = temp.next_node
      i += 1
    end
  end

  def insert_at(value, index)
    i = 0
    temp = @head
    curr = temp
    while temp
      if index.zero? && i.zero?
        @head = Node.new(value, @head)
      else
        i == index && (index.zero? == false)
        new_node = Node.new(value, temp)
        curr.next_node = new_node
        break
      end
      curr = temp
      temp = curr.next_node
      i += 1
    end
    @size += 1
  end

  def remove_at(index)
    i = 0
    temp = @head
    curr = temp
    while temp
      if index.zero? && i.zero?
        @head = @head.next_node
        break
      elsif i == index && (index.zero? == false)
        curr.next_node = temp.next_node
        break
      end
      curr = temp
      temp = curr.next_node
      i += 1
    end
    @size -= 1
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

aa = LinkedList.new
aa.append('hhh')
aa.append('ttt')
puts aa
