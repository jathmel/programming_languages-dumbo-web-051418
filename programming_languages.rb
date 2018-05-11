def reformat_languages(languages)
  new_hash = language(languages)
  languages.each do |style, info|
    info.each do |type, val|
      val.each do |lang, att|
        new_hash[lang][:style] = style 
      end
    end
  end
  new_hash
      
    
  
    
end

def language(hash)
  new_hash = {}#Hash.new { |hash, key| hash[key] = {} }
  hash.each_pair do |style, lang|
    lang.each_pair do |key, val|
      new_hash[key] ={}
    end
  end
  new_hash
end







