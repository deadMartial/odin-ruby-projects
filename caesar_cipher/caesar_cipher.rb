def caesar_cipher(s,n)
  s.chars.map{|c|isalpha?(c)? cipher(c,n) : c}.join
end

def isalpha?(c)
  c.ord.between?(65,65+25) || c.ord.between?(97,97+25)
end

def isupper?(c)
  c.ord.between?(65,65+25)
end

def islower?(c)
  c.ord.between?(97,97+25)
end

def cipher(c,n)
  isupper?(c)? ((((c.ord) - 65 +n)%26)+65).chr : ((((c.ord) - 97 + n)%26)+97).chr
end