category = Category.create! title: "Toan"

10.times.each{|x| Category.create(  title: "Toan#{x}")}

author = Author.create! name: "Leptoiston", intro_author: "nha van nguoi nga"

publisher = Publisher.create! name: "NXB Lam Dong", intro_publisher: "nha xuat ban tuoi tre"

book = Book.create!(author_id: 1,
                    category_id: 1,
                    publisher_id: 1,
                    name: "Dau pha thuong khung",
                    content: "Day la quyen sach noi ve cuoc doi cua Tieu Viem",
                    quanity: 30)