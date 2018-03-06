def reformat_languages(languages)
  # Iterate over the hash and build a
  # new hash that has the languages as keys that point to a value
  # of a hash that describes the type and style.
  new_hash = {}
  oo_langs = languages[:oo]
  functional_langs = languages[:functional]

  #iterate through each of the two hashes above,
  #later add that they are each oo/functional, given which
  #hash they are in
  oo_langs.each do |lang_k, lang_v|
    # |k , v| example is |:ruby, {:type => "interpreted"} |
    # above taken from :ruby => {:type => "interpreted"}

    new_hash[lang_k] = {}
    new_hash[lang_k] = languages[:oo][lang_k]
    new_hash[lang_k][:style] = [:oo]

  end

  functional_langs.each do |lang_k, lang_v|
  # supplemental to oo_langs : if not in oo_langs then x otherwise y

  if new_hash[lang_k]
    new_hash[lang_k][:style].push(:functional)
  else
    new_hash[lang_k] = {}
    new_hash[lang_k] = languages[:functional][lang_k]
    new_hash[lang_k][:style] = [:functional]
  end

  end
  #will need to return new_hash
  new_hash
  #end of function
end
