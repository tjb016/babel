# Used to generate a page of 'babel text'.
class PageOfBabel

  def initialize()
    @character_list = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-,. '
    @character_count = 3000
  end

  def generate_babel
    generated_page = ''
    for x in @character_count.times
      generated_page += @character_list[rand(@character_list.length)]
    end

    return generated_page
  end

end
