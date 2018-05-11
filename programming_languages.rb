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







