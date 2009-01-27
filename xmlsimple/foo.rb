#!/c:/ruby/bin/ruby -w

require 'xmlsimple'

@taghash = Hash.new

def add_drill_to_taghash(tag, drill_name)
  if @taghash[tag] == nil
    @taghash[tag] = Array.new
  end
  @taghash[tag].push drill_name['name']
end

alldrills = XmlSimple.xml_in
# p alldrills
p alldrills['drills'][0]['drill'][0]['name']
p alldrills['drills'][0]['drill'][0]['comments']


alldrills['drills'][0]['drill'].each do |d|
  printf "drill: [%s]\n", d['name']

  d['tags'][0]['tag'].each do |t|
    add_drill_to_taghash(t, d)

    printf("\ttag: [%s]\n", t);
  end
end


# print tags and their drills
puts
puts 'Drills by tag'

@taghash.keys.each do |k|
  printf("tag: [%s]\n", k);

  @taghash[k].each do |drill|
    printf("\tdrill: [%s]\n", drill)
  end
end





