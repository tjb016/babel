# Used to generate a sentence of 'babel text'
class SentenceOfBabel

  def initialize()
    @character_list = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-, '
    @minimum_characters_before_period = 10
    @maximum_characters_before_period = 100
  end

  def generate_babel()
    generated_sentence = ''
    sentence_length = rand(@maximum_characters_before_period - @minimum_characters_before_period) + 1 + @minimum_characters_before_period

    for i in sentence_length.times
      generated_sentence += @character_list[rand(@character_list.length)]
    end

    generated_sentence += '.'

    return generated_sentence
  end

end
