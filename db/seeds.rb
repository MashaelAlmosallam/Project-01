# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Art.destroy_all

mountain = Art.create(name: "Mountain", image: "https://upload.wikimedia.org/wikipedia/commons/c/c5/Moraine_Lake_17092005.jpg", description: "The Rocky Mountains stretch some 3,000 miles from British Columbia and Alberta in Canada through Idaho, Montana, Wyoming, Colorado, and down to New Mexico in the U.S. The range offers dramatic wilderness, diverse wildlife and alpine lakes. Colorado’s Rocky Mountain National Park is traversed by numerous hiking trails and the famously scenic Trail Ridge Road, a 48-mile highway that reaches a high point of 12,183ft.", price: "200.30")
volcano = Art.create(name: "Volcanu", image: "https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/DCTM_Penguin_UK_DK_AL327682_tso68j.jpg", description: "A volcano is a rupture in the crust of a planetary-mass object, such as Earth, that allows hot lava, volcanic ash, and gases to escape from a magma chamber below the surface. Earth's volcanoes occur because its crust is broken into 17 major, rigid tectonic plates that float on a hotter, softer layer in its mantle.", price: "350.25")

nyc = Art.create(name: "Empire State Building", image: "https://www.fourseasons.com/content/dam/fourseasons_magazine/NYF/rockefeller-centers-top-of-the-rock-evening-view-new-york-1600x900.jpg/jcr:content/renditions/original", description: "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan, New York City. Designed by Shreve, Lamb & Harmon and completed in 1931, the building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna.", price: "553.30")
sydney = Art.create(name: "Opera House", image: "https://www.aboutaustralia.com/wp-content/uploads/2017/06/Sydney-Opera-House.jpg", description: "The Sydney Opera House is a multi-venue performing arts centre in Sydney, New South Wales, Australia. It is one of the 20th century's most famous and distinctive buildings.", price: "653.30")

wallPaper = Art.create(name: "Wall Paper", image: "http://hdqwalls.com/wallpapers/mac-os-sierra-abstract-shapes-on.jpg", description: "Abstract art uses a visual language of shape, form, color and line to create a composition which may exist with a degree of independence from visual references in the world.", price: "50")
geometric = Art.create(name: "Geometric", image: "https://a.1stdibscdn.com/archivesE/upload/a_5093/1480946185017/FullSizeRender_257_l.jpg", description: "Abstract art uses a visual language of shape, form, color and line to create a composition which may exist with a degree of independence from visual references in the world.", price: "59.99")


lion = Art.create(name: "Lion", image: "https://image.pennlive.com/home/penn-media/width620/img/wildaboutpa/photo/fawn-1jpg-00d3511c2567a9e2.jpg", description: "The lion is a species in the family Felidae; it is a muscular, deep-chested cat with a short, rounded head, a reduced neck and round ears, and a hairy tuft at the end of its tail.", price: "29.99")
panda = Art.create(name: "Panda", image: "https://thumbs-prod.si-cdn.com/CwSCnNmriuXNNF9Gz2Vr0CGkKPw=/800x600/filters:no_upscale()/https://public-media.smithsonianmag.com/filer/ad/4b/ad4be279-14e2-4c57-af26-a9b8305d8ec2/panda_baby.jpeg", description: "The giant panda, also known as panda bear or simply panda, is a bear native to south central China. It is easily recognized by the large, distinctive black patches around its eyes, over the ears, and across its round body. The name 'giant panda' is sometimes used to distinguish it from the unrelated red panda.", price: "35.99")

User.destroy_all
User.create(name: "admin", username: "admin", email: "admin@example.com", password: "123456", password_confirmation: "123456", admin: "true")

Tag.destroy_all
tags = ["Nature", "Architecture", "Abstract", "Wildlife"]

tags.each do |t|
  Tag.create(name: t)
end

mountain.tags << Tag.find_by(name: "Nature")
volcano.tags << Tag.find_by(name: "Nature")

nyc.tags << Tag.find_by(name: "Architecture")
sydney.tags << Tag.find_by(name: "Architecture")

wallPaper.tags << Tag.find_by(name: "Abstract")
geometric.tags << Tag.find_by(name: "Abstract")

lion.tags << Tag.find_by(name: "Wildlife")
panda.tags << Tag.find_by(name: "Wildlife")