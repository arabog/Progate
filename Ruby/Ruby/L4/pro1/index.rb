require "./menu"

menu1 = Menu.new(name: "Sushi", price: 10)
menu2 = Menu.new(name: "Asharo", price: 100)
menu3 = Menu.new(name: "Pizza", price: 8)

menus = [menu1, menu2, menu3]

menus.each do |menu|
          puts menu.info
end

