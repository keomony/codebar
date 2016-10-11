def duplicate_count(text)
    text.downcase.split("").each do |letter|
      if text.count(letter.to_s) != nil
          duplicate += 1
          duplicate_letter = letter.to_s
      end
      return duplicate, duplicate_letter
    end
end

duplicate_count("aa")
