#Palindrome (or with gsub)
def palindrome?(input)
    input.downcase.delete(" ") == input.downcase.delete(" ").reverse
end
palindrome?("Kazak")
palindrome?("traş niçin şart")
palindrome?("Ey Edip Adana da pide ye")


#Kaç Adet (scan or select)
def kac_adet(sentence, entry)
    sentence.split.select{|i| i==entry}.length
end

kac_adet("bu cümlede iki tane bu var", "bu")
kac_adet("Bu cümlede iki tane bu var", "BU")


#Uzunluk Bulma
def uzunluk_bulucu_metot(arr)
    arr.map{|i| i.length}
end

uzunluk_bulucu_metot ["Ali", "Veli", "Nuriye"]   #[3, 4, 6]


def uzunluk_bulucu_metot(arr)
    a=arr.map{|i| {i=>i.length}} # [{"Ali"=>3}, {"Veli"=>4}, {"Nuriye"=>6}]
    Hash[*a.collect{|h| h.to_a}.flatten]
end

uzunluk_bulucu_metot ["Ali", "Veli", "Nuriye"]   # {"Ali"=>3, "Veli"=>4, "Nuriye"=>6}

def uzunluk_bulucu_metot(arr)
    a=arr.map{|i| [i, i.length].to_h} # [{"Ali"=>3}, {"Veli"=>4}, {"Nuriye"=>6}]
end


#Sıralama
def sirala(str)
    str.split(" ").sort_by {|word| word.size}.join(' ') 
    #str.split(" ").sort_by {&:size}.join(' ')
end

sirala("bilişim eskişehir akademik")  # "bilişim akademik eskişehir"




