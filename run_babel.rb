# Program to generate text to be used within the Libray of Babel
require './sentence_of_babel.rb'
require './page_of_babel.rb'

# Determine if a sentence or page should be generated.
# Optionally the user can also specify how many are generated per batch.
if ARGV[0] == 'sentence'
  babel_generator = SentenceOfBabel.new()
elsif ARGV[0] == 'page'
  babel_generator = PageOfBabel.new()
else
  abort("Usage:
    run_babel type <number per batch>
    \ttype - 'sentence' or 'page'
    \t<number per batch> - number of babels to be generated per batch")
end

if ARGV[1]
  if ARGV[1].to_i != 0
    sentences_per_batch = ARGV[1].to_i
  else
    abort("<number per batch> must be an integer")
  end
else
  sentences_per_batch = 1
end

# Generate batches of 'babel text' until the user exits the program
continue = true

while continue == true
  for x in sentences_per_batch.times
    puts "#{x + 1} - #{babel_generator.generate_babel()}"
  end

  puts "Generate another #{x + 1} #{ARGV[0]}(s)? (Y)"
  if STDIN.gets.chomp.downcase != 'y'
    continue = false
  end
end
