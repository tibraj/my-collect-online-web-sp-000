def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield array[i]
    i += 1
  end
  array
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) { |element| element.upcase}
