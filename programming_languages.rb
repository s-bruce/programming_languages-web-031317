def reformat_languages(languages)
	new_hash = {}

	languages.each do |style, langs|
		langs.each do |lang, type_hash|
			type = type_hash[:type]
			new_hash[lang] = {:type => type, :style => []}
		end
	end

	languages.each do |style, langs|
		langs.each do |lang, type_hash|
			new_hash[lang][:style] << style
		end
	end

	new_hash
end
