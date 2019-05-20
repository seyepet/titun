# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

businesssupport = Category.create!(name: 'Business Support')
propertyforsale = Category.create!(name: 'Property for Sale')
hardskillshub = Category.create!(name: 'Hard Skills Hub')
laptops = Category.create!(name: 'Laptop')
tvsthreewheeler = Category.create!(name: 'TVS ThreeWheeler')
inverter = Category.create!(name: 'Inverter')
drycellbattery = Category.create!(name: 'DryCell Battery')
gelcellbattery = Category.create!(name: 'Gell Battery')
wetcellbattery = Category.create!(name: 'Wet Battery')
batteryrack = Category.create!(name: 'Battery Rack')
				
Marketplace.create!(name: 'Trademark Registration', price: 50000, description: 'Trademark Registration', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ip_incorporation/trademark_registration.png',  vendor: 'mbiafrica', category_id: businesssupport.id)
Marketplace.create!(name: 'Company Incorporation', price: 50000, description: 'Company Registration', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ip_incorporation/company_incorporation.png',  vendor: 'mbiafrica', category_id: businesssupport.id)
Marketplace.create!(name: 'NGO', price: 120000, description: 'NGO Registration', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ip_incorporation/group+logo.PNG', vendor: 'mbiafrica', category_id: businesssupport.id)
Marketplace.create!(name: 'NCC Filing', price: 30000, description: 'Class Lisence Filing', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ip_incorporation/ncc_class_licence.png', vendor: 'mbiafrica', category_id: businesssupport.id)
Marketplace.create!(name: 'Patent', price: 120000, description: 'Patent Registration', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hdt4.png',  vendor: 'mbiafrica', category_id: businesssupport.id)
Marketplace.create!(name: 'Business Name Registration', price: 25000, description: 'Business Name Registation', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ip_incorporation/businessname_registration.png',  vendor: 'mbiafrica', category_id: propertyforsale.id)
Marketplace.create!(name: 'Apartment_Apartment', price: 60000000, description: 'Property with good title', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/akobeproperties/apapa.png',  vendor: 'Adeproperty', category_id: propertyforsale.id)
Marketplace.create!(name: 'Graphic design Training', price: 50000, description: 'Graphic Design Training', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/graphic_desighner.PNG',  vendor: 'Hard Skills Hub', category_id: hardskillshub.id)
Marketplace.create!(name: 'Web Application Training', price: 120000, description: 'Web Application Development Training', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hdt5.png',  vendor: 'Hard Skills Hub', category_id: hardskillshub.id)
Marketplace.create!(name: 'Advance Excel Training', price: 50000, description: 'Excell For Business nameing', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/excelforbusiness.png',  vendor: 'Hard Skills Hub', category_id: hardskillshub.id)

Dreamscomputer.create!(name: 'HP 240 G6', number: '4WV73ES', price:  118000, description: 'Zed PC AIO - Intel® Celeron® Processor N3350 (2M Cache, up to 2.4 GHz), 17.3 Inch Touch Screen, Intel® HD Graphics 500, 3 GB RAM, 500GB HDD + 32GB eMMc, Bluetooth 4.0, Standard HDMI, Windows 10 Home, White and Silver + iLife Spark 5', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/excelforbusiness.png',  vendor: 'DreamsLaptops', category_id: laptops.id)
Dreamscomputer.create!(name: 'HP NoteBook', number: 'BS289WM', price: 70000, description: 'HP Stream - 11-ah117wm - Intel® Celeron® N4000 (1.1 GHz base frequency, up to 2.6 GHz burst frequency, 4 MB cache, 2 cores), 11.6" diagonal HD SVA anti-glare WLED-backlit (1366 x 768) Display, 4 GB DDR4-2400 SDRAM (onboard), 32 GB eMMC, Integrated Intel® UHD Graphics 600, Full-size island-style keyboard, 802.11b/g/n/ac (2x2) Wi-Fi® and Bluetooth® 4.2 combo, 1 microSD media card reader, 2-cell battery, Dual speakers, Windows 10 Home in S mode, 1 Year Warranty', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hp/HP+240+G6+4WV73ES.jpg',  vendor: 'DreamsLaptops', category_id: laptops.id)
Dreamscomputer.create!(name: 'HP Notebook', number: '14CF0008CA', price: 121000, description: 'HP Notebook - 15-bs289wm - Intel® Pentium® N5000 (1.1 GHz base frequency, up to 2.7 GHz burst frequency, 4 MB cache, 4 cores), 15.6" diagonal HD SVA WLED-backlit touch screen (1366 x 768) Display, 4 GB DDR4-2400 SDRAM (1 x 4 GB), 1 TB 5400 rpm SATA, Integrated Intel® UHD Graphics 605, Intel® Wireless-AC 9461 802.11a/b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 5 Combo, 3-cell Battery, Windows 10 Home 64, 1 Year Warranty', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hp/HP+NoteBook+15+BS289WM.jpg',  vendor: 'DreamsLaptops', category_id: laptops.id)
Dreamscomputer.create!(name: 'HP Pavilion', number: '14-CD0002NIA', price: 123000, description: 'HP Notebook 15-bs151nx -Intel® Core™ i3-5005U (2 GHz, 3 MB cache, 2 cores), 15.6" Diagonal HD Display, 4 GB DDR3L-1600 SDRAM (1 x 4 GB), 500 GB 5400 rpm SATA, Intel® HD Graphics 5500, DVD-Writer, Full-size island-style English Arabic Keyboard, 802.11b/g/n (1x1) Wi-Fi® and Bluetooth® 4.2 combo, 1 multi-format SD media card reader, 3-cell Battery, Dual speakers,  Black, FreeDOS 1.2, 1 Year Warranty', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hp/HP+Pavilion+x360+14-CD0002NIA.jpg',  vendor: 'DreamsLaptops', category_id: laptops.id)
Dreamscomputer.create!(name: 'HP Pavilion x360', number: 'BA175NR', price: 139000, description: 'HP Notebook 15-da0065nia -  Intel® Core™ i3-7020U (2.3 GHz, 3 MB cache, 2 cores), 15.6") diagonal HD SVA anti-glare WLED-backlit (1366 x 768) Display, 8 GB DDR4-2133 SDRAM (1 x 8 GB), 1 TB 5400 rpm SATA, Intel® HD Graphics 620, DVD-Writer, Full-size island-style keyboard with numeric keypad, 802.11b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo, 1 multi-format SD media card reader, 3-cell battery, Dual speakers, Smoke Grey FreeDOS 1.2, 1 Year Warranty', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hp/HP+Pavilion+x360+14-CD0002NIA.jpg',  vendor: 'DreamsLaptops', category_id: laptops.id)
Dreamscomputer.create!(name: 'HP Notebook', number: '3YA09E', price: 139000, description: 'HP Notebook - 15-bs154ne - Intel® Core™ i3-5005U (2 GHz, 3 MB cache, 2 cores), 15.6") diagonal HD SVA anti-glare WLED-backlit (1366 x 768), 4 GB DDR3L-1600 SDRAM (1 x 4 GB), 500 GB 5400 rpm SATA, Intel® HD Graphics 5500, DVD-Writer, Full-size island-style keyboard, 802.11b/g/n (1x1) Wi-Fi® and Bluetooth® 4.2 combo, 1 multi-format SD media card reader, 3-cell Battery, Dual speakers, Windows 10 Home 64, 1 Year Warranty', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/hp/HP+Pavilion+x360BA175NR.jpg',  vendor: 'DreamsLaptops', category_id: laptops.id)


Adeapartment.create!(address: 'Apapa Lagos', price: 50000000, description: ' The property is located close to Apapa seaport and it is suitable for <i> housing and warehousing</i>. 
The property has letters of administration as title and the asking price of the property is N60 million.', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/akobeproperties/apapa.png',  category_id: propertyforsale.id)
Adeapartment.create!(address: 'Ifo Farm Land Per Acre', price: 8000000, description: 'Farm land at Ifo is suitable for investment, training, research, agrotourism and agritaiment facilities. The farm land is a 14 acres with standing and fruiting pal front, pal procerssing factory, three bedroom flat and a farm office and other farm facilities', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/akobeproperties/farmland.png',  category_id: propertyforsale.id)
Adeapartment.create!(address: 'Ifo Farm Land Per Acre', price: 7500000, description: 'Farm land at Ifo is suitable for investment, training, research, agrotourism and agritaiment facilities. The farm land is a 4 acres with standing and fruiting pal front, pal procerssing factory and other farm facilities', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/akobeproperties/farmlandpalmfront.png',  category_id: propertyforsale.id)
Adeapartment.create!(address: 'Ifo Farm Land Per Acre', price: 7500000, description: 'Farm land at Ifo is suitable for investment, training, research, agrotourism and agritaiment facilities. The farm land is a 2 acres with standing and fruiting pal front, pal procerssing factory and other farm facilities', image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/akobeproperties/farnlandpiggery.png',  category_id: propertyforsale.id)



Rofimachine.create!(brand: 'Stainless Steel Pepper Grinding Machine - Petrol Engine', price: 270000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/partners/Pepper-Grinder.jpg',  category_id: tvsthreewheeler.id)
Rofimachine.create!(brand: 'Stainless Steel Pepper Grinding Machine - Electric Motor Engine', price: 320000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/partners/Pepper-Grinder.jpg',  category_id: tvsthreewheeler.id)
Rofimachine.create!(brand: 'Stainless Steel Pepper Grinding Machine - Petrol Engine', price: 270000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/partners/Pepper-Grinder.jpg',  category_id: tvsthreewheeler.id)
Rofimachine.create!(brand: 'Stainless Steel Pepper Grinding Machine - Electric Motor Engine', price: 320000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/partners/Pepper-Grinder.jpg',  category_id: tvsthreewheeler.id)




Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)
Tonycycle.create!(brand: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: tvsthreewheeler.id)



Solarwork.create!(name: 'Battery 150AH/12V LUMINOUS', code: 'WIL11883', description: 'Battery 150AH/12V LUMINOUS', price: 100000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/Luminous+battery+200AH+12V+Inverter+battery.jpg',  category_id: drycellbattery.id)
Solarwork.create!(name: 'Battery  200AH/12V LUMINOUS', code: 'WIL10020', description: 'Battery  200AH/12V LUMINOUS', price: 125000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-220ah-12v-inverlast-tall-tubular-battery.jpg',  category_id: drycellbattery.id)
Solarwork.create!(name: 'Battery 100AH/12V LUMINOUS', code: 'WIL10021', description: 'Battery 100AH/12V LUMINOUS', price: 65000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-100ah12v-battery-228x228.jpg',  category_id: drycellbattery.id)

Solarwork.create!(name: 'Wet Cell Battery 220AH/12V LUMINOUS', code: 'WIL11880', description: 'Wet Cell Battery 220AH/12V LUMINOUS', price: 120000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-220ah-12v-inverlast-tall-tubular-battery.jpg',  category_id: wetcellbattery.id)

# Solarproduct.create!(name: 'Battery Gel 200AH/12V LUMINOUS', code: 'WIL11880', description: 'Battery 150AH/12V LUMINOUS', price: 150000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: wetcellbattery.id)

Solarwork.create!(name: 'INVA BATTERY RACK 2 BATTERY', code: 'WIL10028', description: 'Battery 150AH/12V LUMINOUS', price: 7500, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/2.02batteryrack.jpg',  category_id: wetcellbattery.id)
Solarwork.create!(name: 'NVA BATTERY RACK 4 BATTERIES', code: 'WIL10024', description: 'NVA BATTERY RACK 4 BATTERIES', price: 12000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/3.04batteryrack.jpg',  category_id: batteryrack.id)
Solarwork.create!(name: 'NVA BATTERY RACK 8 BATTERIES', code: 'TVS ThreeWheeler', description: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/11.0510tubularbatteryrack.jpg',  category_id: drycellbattery.id)
Solarwork.create!(name: 'NVA BATTERY RACK 10 BATTERIES', code: 'TVS ThreeWheeler', description: 'TVS ThreeWheeler', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/11.0510tubularbatteryrack.jpg',  category_id: gelcellbattery.id)


Solarwork.create!(name: 'Luminous 1kVA/12V Eco LUMINOUS', code: 'WIL11883', description: '1kVA/12V Eco LUMINOUS', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/1kVA12V+Eco+LUMINOUS.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 850VA/12 SOLAR HYBRID', code: 'WIL11892', description: '850VA/12 SOLAR HYBRID', price: 760000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-850va-12v-solar-hybrid-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 1000VA', code: 'WIL14785', description: '1000VA', price: 60000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-1050va-12v-eco-volt-pure-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 1.5KVA/24V SOLAR HYBRID', code: 'WIL11894', description: '1.5KVA/24V SOLAR HYBRID', price: 85000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-1500va-24v-solar-hybrid-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 1.5KVA/24VA ZELIO LUMINOUS', code: 'WIL14785', description: '1.5KVA/24VA ZELIO LUMINOUS', price: 85000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-1500va-24v-zelio-inverter-home-ups+(2).jpg',  category_id: inverter.id)
# Solarproduct.create!(name: 'Luminous 2.5KVA/36V CRUZE', code: 'WIL11864', description: '1kVA/12V Eco LUMINOUS', price: 0, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/tvs/1.TVS.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 3.5KVA/48V', code: 'WIL11878', description: '3.5KVA/48V', price: 235000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-1050va-12v-eco-volt-pure-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 5KVA/96V', code: 'WIL10005', description: '5KVA/96V', price: 480000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-1050va-12v-eco-volt-pure-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 7.5KVA/120V', code: 'WIL10001', description: '7.5KVA/120V', price: 590000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-7.5kva-120v-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 10KVA/180V', code: 'WIL10007', description: '10KVA/180V', price: 700000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/10kva-180v-luminous-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 15KVA/240V offline', code: 'WIL10004', description: '15KVA/240V offline', price: 900000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-15kva-360v-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 20KVA/360V offline', code: 'WIL10012', description: 'Luminous 20KVA/360V offline', price: 975000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-20kva-360v-sine-wave-inverter.jpg',  category_id: inverter.id)
Solarwork.create!(name: 'Luminous 30KVA/360V offline', code: 'WIL27262', description: '30KVA/360V offline', price: 2500000, image_url: 'https://s3.us-east-2.amazonaws.com/babanla/assets/ecoimages/luminous-20kva-360v-sine-wave-inverter.jpg',  category_id: inverter.id)

