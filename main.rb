def convert_reading_vertically(four_character_idioms)
  fci_length = four_character_idioms.length
  fci_length.times do |i|
    four_character_idioms.reverse.each do |four_character_idiom|
      print four_character_idiom[i] + "  "
    end
    puts ""
  end
end

four_character_idioms = [
  "早寝早起",
  "顔面崩壊",
  "諸行無常",
  "勇気凛々",
  "元気発剌",
  "興味津々",
  "意気揚々",
  "元気百倍",
  "奇想天外",
  "謹賀新年",
  "七転八倒",
  "自作自演",
  "自業自得",
  "三寒四温",
  "焼肉定食",
  "四捨五入",
  "最低賃金",
  "業務委託",
  "定時退社",
  "一攫千金",
  "不労所得",
  "四捨五入",
  "四捨五入",
  "四捨五入",
]

four_character_idioms = [
  "一瞬千撃",
  "抜山蓋世",
  "鬼哭啾々",
  "故豪鬼成",
]

tateyomi(four_character_idioms)