def reformat_languages(languages)
  new_hash = language(languages)
  languages.each do |style, info|
    info.each do |type, val|
      
    
  
    
end

def language(langauges)
  new_hash = Hash.new { |hash, key| hash[key] = Hash.new(){[]} }
  data.each_pair do |style, lang|
    lang.each_pair do |key, val|
      new_hash[key][:style] << style
    end
  end
  new_hash
end

def style(languages)
  new_hash = language(languages)
  new_hash.each do |el|
    languages.each do |style, data|
      data.each do |key, val|
        new_hash[el][key] = val
      end
    end
  end
  new_hash
end


def reformat_languages(languages)
  new_languages = {}
  languages.each do |type, hash|
    hash.each do |name, attributes|
      new_languages[name] ||= attributes
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
    end
  end
  new_languages
end




