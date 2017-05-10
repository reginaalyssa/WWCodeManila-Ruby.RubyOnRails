n = 0
while n < 3 do
  p "Hello"
  n += 1
end

3.times do
  p "Hello"
end

["pen", "apple"].each do |item|
  p "I have a #{item}."
end

numbers = [2, 6, 13, 12, 7, 9]
# => ['even', 'even', 'odd', 'even', 'odd', 'odd']

odd_or_even = []
numbers.each do |number|
  result = number % 2 === 0 ? 'even' : 'odd'
  odd_or_even << result
end
odd_or_even

# Map simplifies the generation of new array
# There is no need to define a new array to store the values computed
# by iterating the elements of an array (or hash, etc).
# Map automatically returns an array containing the processed values

numbers.map do |number|
  number % 2 === 0 ? 'even' : 'odd'
end

numbers.map do |number|
  number.even?
end

numbers.map &:even?

# Hash
eat_translations = {
  english: 'eat',
  filipino: 'kain',
  spanish: 'comer'
}

eat_translations.map do |language, term|
  "Eat in #{language} is #{term}."
end

[1, 2, 3, 4, 5].sample

[1, 2, 3].concat([4, 5, 6])
# => [1, 2, 3, 4, 5, 6]

eat_translations = {
  english: 'eat',
  filipino: 'kain',
  spanish: 'comer'
}

new_eat_translations = {
  japanese: 'tabe',
  bicol: 'kaon'
}

# Hash#merge combines the first hash with the second one
# It does not update (mutate) the original hash
# Use merge! if you want to update the original hash
eat_translations.merge(new_eat_translations)

{
  english: 'eat',
  filipino: 'kain',
  spanish: 'comer',
  japanese: 'tabe',
  bicol: 'kaon'
}

# Functions are reusable blocks of code
# In Ruby, the last line of a function is automatically returned.
# Because of this, you don't need to use `return` if you are returning
# the computed value of the last line

p "Hello, I am Joy"
p "Hello, I am Michie"
p "Hello, I am Jeykle"

def introduce(name)
  p "Hello, I am #{name}"
end

introduce("Joy")
introduce("Michie")
introduce("Jeykle")

# Functions returning boolean (true or false) end in `?` by convention
def divisible_by_ten?(number)
  number % 10 === 0
end
