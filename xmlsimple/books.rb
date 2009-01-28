#!/c:/ruby/bin/ruby -w

require 'xmlsimple'

book_store_xml = <<EOL
<bookstore>
    <book genre="Autobiography">
        <title>The Autobiography of Benjamin Franklin</title>
        <author>
            <first-name>Benjamin</first-name>
            <last-name>Franklin</last-name>
        </author>
        <price>8.99</price>
        <stock>3</stock>
    </book>
    <book genre="Novel">
        <title>Moby Dick</title>
        <author>
            <first-name>Herman</first-name>
            <last-name>Melville</last-name>
        </author>
        <price>11.99</price>
        <stock>10</stock>
    </book>
    <book genre="Philosophy">
        <title>Discourse on Method</title>
        <author>
            <first-name>Rene</first-name>
            <last-name>Descartes</last-name>
        </author>
        <price>9.99</price>
        <stock>1</stock>
    </book>
    <book genre="Computers">
        <title>Windows PowerShell in Action</title>
        <author>
            <first-name>Bruce</first-name>
            <last-name>Payette</last-name>
    </author>
        <price>39.99</price>
        <stock>5</stock>
    </book>
</bookstore>
EOL

books = XmlSimple.xml_in(book_store_xml)
#p books

printf("a list of all book titles.\n")
total_price = 0
books['book'].each do |b|
  printf("%7s, %s\n", b['price'],  b['title'])
  total_price += Float(b['price'][0])
end
puts "Total price: " + total_price.to_s

printf("\n\na list of all books that cost more than $9\n")
books['book'].each do |b|
  puts b['title'] if Float(b['price'][0]) > 9.0
end

