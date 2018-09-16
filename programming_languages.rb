def reformat_languages(languages)
  new_hash = {}
  languages.each do |k,v|
    v.each do |l,w|
      new_hash[l] = w
      if new_hash[l][:style] == nil
        new_hash[l][:style] = []
        new_hash[l][:style].push(k)
      else 
        new_hash[l][:style].push(k)
      end
    end
    puts new_hash
  end
  new_hash
end
